require './model/action_type'
require './model/game'
require './model/move'
require './model/hockeyist'
require './model/world'

class MyStrategy
  # @param [Hockeyist] me
  # @param [World] world
  # @param [Game] game
  # @param [Move] move
  def move(me, world, game, move)
    move.speed_up = -1.0
    move.turn = Math::PI
    move.action = ActionType::STRIKE
  end
end