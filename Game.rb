require './Player.rb'
require './Calculator.rb'
require 'pry'

class Game
  attr_accessor :players

  def initialize
  end


  def newGame
    @players = []

    puts "Player 1, please choose your name"
    newPlayer = gets.chomp

    player1 = Player.new(newPlayer,3)
    @players.push(player1)

    puts "Player 2, please choose your name"
    newPlayer = gets.chomp
    player2 = Player.new(newPlayer,3)
    @players.push(player2)

    calc = Calculator.new
    playerCounter = 1
    maxPlayers = players.size
    #GameLoop
    until players.detect { |p| p.health == 0  } do

      puts "---- NEW TURN ----"
      playerCounter +=1

      curPlayer = players[playerCounter % maxPlayers]

      num1 = calc.generateNumber
      num2 = calc.generateNumber
      puts "#{curPlayer.name} what does #{num1} + #{num2} equal? "
      ans = curPlayer.answerQuestion

      # binding.pry
      if calc.right?(num1,num2,ans) then
        puts "Yes! You are correct!"
      else
        puts "Seriously? No."
        curPlayer.loseHealth
      end

      puts "#{players[0].name}: #{players[0].health}/3 vs #{players[1].name}: #{players[1].health}/3"

    end


    #End game
    winner = players.find { |p| p.health != 0 }

    puts "#{winner.name} has won with #{winner.health} health left."
    puts "---- GAME OVER ----"
    puts "Good bye!"
    # binding.pry
    return nil
  end
end

#Starts the game:
math = Game.new
math.newGame


