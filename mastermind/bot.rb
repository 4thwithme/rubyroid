require_relative 'constants'

class Bot < Player
  def initialize(name)
    super
  end

  def generate_code
    @code = []
    4.times { @code << COLORS[rand(1..COLORS.length)] }

    puts "#{@name} has generated a code. [#{@code.clone.join(', ')}]"
    @code
  end

  def make_guess
    guess = []
    4.times { guess << COLORS[rand(1...COLORS.length)] }

    puts "#{@name} has generated a guess. [#{guess.clone.join(', ')}]"
    guess
  end
end
