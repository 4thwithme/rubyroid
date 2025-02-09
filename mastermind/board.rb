class Board
  @@empty_field = {
    prediction_field: Array.new(10) { Array.new(4) },
    response_field: Array.new(10) { Array.new(4) }
  }

  def initialize(players, guessed_code)
    @players = players
    @board = @@empty_field
    @score_board = players.each_with_object({}) do |player, acc, index|
      player.board = self
    end
    @guessed_code = guessed_code
  end

  def reset_board
    @board = @@empty_field
  end

  def display_board
    puts 'Prediction Field | Response Field'
    puts '---------------------------------'
    for i in (0...@board[:prediction_field].length)
      puts "#{@board[:prediction_field][i]} | #{@board[:response_field][i]}"
    end
  end

  def add_guess(guess)
    @board[:prediction_field].each_with_index do |row, index|
      next unless row.all?(&:nil?)

      @board[:prediction_field][index] = guess
      break
    end
  end

  def check_guess(guess)
    response = []

    correct_guesses = 0
    semi_correct_guesses = 0

    guess.each_with_index do |color, i|
      if color == @guessed_code[i]
        correct_guesses += 1
      elsif @guessed_code.include?(color)
        semi_correct_guesses += 1
      end
    end

    res = correct_guesses.times.map { CheckingSigns::BLACK } +
          semi_correct_guesses.times.map { CheckingSigns::WHITE }

    index = @board[:prediction_field].index(guess)

    @board[:response_field][index] = res

    return true if correct_guesses == 4

    false
  end
end
