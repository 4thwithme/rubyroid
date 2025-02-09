require "json"

class Game
  def initialize
    @word = []
    @guess = []
    @used_chars = []
    @tries = 8
  end

  def start_game
    puts "Do you want to load game? (y/n)"
    if gets.chomp == "y"
      load_game
    else
      words = load_library
      @word = pick_rand_word(words)
      nex_step
    end
  end

  private

  attr_accessor :words

  def load_game
    puts "Enter number of the games from the list"
    game = nil
    list = Dir.entries(File.join(__dir__, "./saves"))
    list.each_with_index do |file, index|
      puts "#{index} - #{file}" if file.include?(".json")
    end

    while game.nil?
      input = gets.chomp.to_i
      if input >= 0 && input < Dir.entries(File.join(__dir__, "./saves")).length
        game = list[input]
      else
        puts "Invalid input!!"
      end
    end

    load_game_data(game)
  end

  def load_game_data(game)
    data = JSON.parse(File.read(File.join(__dir__, "./saves/#{game}")))
    @word = data["word"]
    @guess = data["guess"]
    @used_chars = data["used_chars"]
    @tries = data["tries"]
    nex_step
  end

  def draw_ui
    puts "----------------------------"
    puts "Used characters: #{@used_chars.join(', ')}"
    puts "#{@guess.join(' ')}"
    puts "Tries left: #{@tries}"
    puts "----------------------------"
  end

  def nex_step
    draw_ui
    ask_to_save
    input = nil
    while input.nil?
      puts "Full guess(0) or latter(1)?"
      input = gets.chomp

      unless %w[1 0].include?(input)
        puts "Invalid input!!"
        input = nil
        next
      end

      input = input.to_i

      if input.zero?
        puts "Type whole word!!"
        full_word = gets.chomp.downcase
        if full_word.split("") == @word
          check_is_won(full_word.split(""))
        else
          @tries = 0
          notifiy_lost
        end
      else
        puts "Enter your letter!"
        letter = gets.chomp.downcase
        @used_chars.push(letter) unless @used_chars.include?(letter)

        if @word.include?(letter)
          @word.each_with_index do |char, index|
            @guess[index] = char if char == letter
          end
          puts "Correct guess!!"

          check_is_won(@guess)
        else
          @tries -= 1
          puts "Wrong guess!!"
          notifiy_lost if @tries.zero?
        end
      end

    end
    nex_step if @tries.positive?
  end

  def check_is_won(array)
    return unless array == @word

    puts "Congratc!! You won. Word was #{@word.join('')}"
    exit
  end

  def notifiy_lost
    puts "You lost!! Word was #{@word}"
  end

  def load_library
    words_list = []
    File.readlines(File.join(__dir__, "./google-10000-english-no-swears.txt")).each do |line|
      words_list.push(line) if line.length > 8 && line.length < 13
    end
    words_list
  end

  def pick_rand_word(words_list)
    word = words_list[rand(0...words_list.length)].gsub(/[\n\t\r\f]/, "").split("")
    @guess = Array.new(word.length - 1) { "_" }
    @word = word
  end

  def ask_to_save
    puts "Do you want to save game? (y/n)"

    input = gets.chomp.downcase
    return unless input == "y"

    puts "Enter name of the game"
    name = gets.chomp
    save_game(name)
  end

  def save_game(name)
    Dir.mkdir(File.join(__dir__, "./saves")) unless File.exist?(File.join(__dir__, "./saves"))

    File.write(
      File.join(__dir__, "saves/#{name.downcase}.json"),
      JSON.dump(
        {
          word: @word,
          guess: @guess,
          used_chars: @used_chars,
          tries: @tries
        }
      )
    )
  end
end

game = Game.new
game.start_game
