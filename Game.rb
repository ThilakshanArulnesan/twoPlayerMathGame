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
    playerCounter = 0
    maxPlayers = players.size
    #GameLoop
    while players.detect { |p| p.health!=3 } do
      playerCounter += 1

      curPlayer = players[playerCounter % maxPlayers]

      p 'hi'
      puts ""
      players[0].loseHealth
    end


    #End game
    winner = players.find { |p| p.health != 0 }

    puts "Game over, #{winner. name} has won with #{winner.health} left."
    binding.pry
    return nil
  end
end

math = Game.new

math.newGame

p math.players

