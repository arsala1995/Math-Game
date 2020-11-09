require "./game.rb"
require "./players.rb"
require "./questions.rb"

player1 = Player.new("Player1")
player2 = Player.new("Player2")

# set current player
game = Game.new(player1, player2)

while game.players[0].life > 0 and game.players[1].life > 0 do
  # generate question and answer
  puts "--- NEW TURN ---"
  question = Question.new
  puts "#{game.current_player.name}: #{question.gen_question}"
  answer = question.answer

  # prompt for answer
  print "> "
  input = gets.chomp.to_i

  # check answer
  if (input != answer)
    puts "#{game.current_player.name}: Seriously? No!"
    game.subtract_life

else
  puts "#{game.current_player.name}: YES! You are correct."

 
end
game.report_life
  # change turn
  game.change_player
end