class Player
  attr_accessor :score, :board
  attr_reader :name, :code

  def initialize(name = 'Player')
    @score = 0
    @name = name
    @code = nil
    @board = nil
  end

  def generate_code
    @code = []
    puts 'Enter your code by choosing 4 colors by entering their index from the following:'
    puts COLORS.join(', ')
    puts 'Example: 0123'

    4.times do
      color = nil

      until color
        color = gets.chomp

        if color.to_i.to_s != color || !COLORS[color.to_i]
          puts 'Invalid input. Please try again.'
          color = nil
          next
        end

        @code << COLORS[color.to_i]
      end
    end

    puts "#{@name} has generated a code. [#{@code.clone.join(', ')}]"

    @code
  end

  def make_guess
    puts 'Enter your guess by choosing 4 colors by entering their index from the following:'
    puts COLORS.join(', ')
    puts 'Example: 0123'

    guess = nil

    until guess
      guess = gets.chomp

      next unless guess.to_i.to_s != guess || guess.length != 4

      puts 'Invalid input. Please try again.'
      guess = nil
      next
    end

    puts "#{@name} has generated a guess. [#{guess.clone.join(', ')}]"
    guess
  end

  def check_guess(guess)
    response = []
    res = @board.check_guess(guess)

    p res
  end
end
