class Game
  def initialize(players)
    @players = players
    @board = Array.new(3) { Array.new(3) }
    @step = 0
    do_move
  end

  def do_move
    players_turn = @step % 2

    current_player = @players[players_turn]
    puts "Player #{players_turn + 1} your turn! Put sign: #{current_player.sign.ui_icon}!"
    puts 'Enter your move by 2 consequtive numbers. Ex: 01, 22, 03, 30. Where first number is row index, second - column index.'

    while true
      move = gets.chomp
      break if move.match?(/\A[0-2][0-2]\z/)

      puts 'Invalid input! Try again!'
    end

    row = move[0].to_i
    column = move[1].to_i

    if @board[row][column].is_a?(String)
      puts 'This cell is already taken! Try again!'
      do_move
    end

    if @board[row][column].nil?
      @board[row][column] = current_player.sign.ui_icon
      @step += 1
    else
      puts 'This cell is already taken! Try again!'
    end

    # need to print board after each move separated by | and - and put " "if cell is empty
    @board.each do |line|
      puts line.map { |s| s.nil? ? ' ' : s }.join('|')
      puts '-----'
    end

    res = check_is_game_finished
    res.is_a?(String) ? puts(res) : do_move
  end

  private

  def check_is_game_finished
    case true
    when check_is_player_won(@players[0]) then 'Congrats! Player 1 Won!'
    when check_is_player_won(@players[1]) then 'Congrats! Player 2 Won!'
    when check_is_draw then 'Draw!!'
    else false
    end
  end

  def check_is_draw
    @board.flatten.none?(&:nil?)
  end

  def check_is_player_won(player)
    icon = player.sign.ui_icon

    horizontal_compination = @board.any? { |line| line.all? { |s| s == icon } }
    vertical_compination = @board.transpose.any? { |line| line.all? { |s| s == icon } }
    diagonal_compination = [
      @board[0][0], @board[1][1], @board[2][2]
    ].all? { |s| s == icon } || [
      @board[0][2], @board[1][1], @board[2][0]
    ].all? { |s| s == icon }

    horizontal_compination || vertical_compination || diagonal_compination
  end
end
