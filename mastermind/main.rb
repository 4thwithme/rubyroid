# require_relative 'board'
require_relative 'modules'
require_relative 'player'
require_relative 'bot'
require_relative 'board'

class Game
  def initialize
    @mode = GameType::PVP
    @players = []
    @board = nil
    start_game
  end

  private

  def get_players(mode)
    players = []

    case mode
    when GameType::PVP
      players << Player.new('Player 1')
      players << Player.new('Player 2')
    when GameType::PVB
      players << Player.new('Player 1')
      players << Bot.new('Bot 2')
    when GameType::BVP
      players << Bot.new('Bot 1')
      players << Player.new('Player 2')
    when GameType::BVB
      players << Bot.new('Bot 1')
      players << Bot.new('Bot 2')
    end

    players
  end

  def chose_game_type
    puts 'Choose the Game type:'
    puts '0 - for PVP'
    puts '1 - for PVB'
    puts '2 - for BVP'
    puts '3 - for BVB'

    valid_input = [GameType::PVP, GameType::PVB, GameType::BVP, GameType::BVB]

    type = nil

    until type
      type = gets.chomp

      if type.to_i.to_s != type || !valid_input.include?(valid_input[type.to_i])
        puts 'Invalid input. Please try again.'
        type = nil
        next
      end

      mode = valid_input[type.to_i]

      unless mode
        puts 'Invalid type. Please try again.'
        type = nil
      end
    end

    puts "You chose #{type} mode. Let's play!"

    mode
  end

  def run_next_step
    puts "#{@players[1].name} put your guess"
    guess = @players[1].make_guess
    @board.display_board
    @board.add_guess(guess)
    result = @board.check_guess(guess)
    @board.display_board

    if result
      "Game over. The winner is #{players[1].name}"
    else
      run_next_step
    end
  end

  def start_game
    @mode = chose_game_type
    @players = get_players(@mode)

    code = @players[0].generate_code
    @board = Board.new(@players, code)
    run_next_step
  end
end

game = Game.new
