require './players'

class Game

  attr_reader :report_life, :players, :current_player

  def initialize (p1, p2)
    @players = [p1, p2]
    @current_index = 0
    @current_player = @players[@current_index]
  end
  
  def subtract_life
    @current_player.life -= 1
    if @current_player.life == 0
      change_player
      puts "#{@current_player.name} wins with a score of #{@current_player.life}/3!" 
      puts "--- GAME OVER ---"
      puts "Good bye!"
    end
  end

  def report_life
    puts "P1: #{@players[0].life}/3  P2:#{@players[1].life}/3"
  end
  
  def change_player
    if @current_player == @players[0]
      @current_player = @players[1]
    else
      @current_player = @players[0]
    end
  end
  
end