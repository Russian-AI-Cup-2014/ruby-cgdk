require './model/hockeyist'
require './model/player'
require './model/puck'

class World
  # @return [Integer]
  attr_reader :tick

  # @return [Integer]
  attr_reader :tick_count

  # @return [Float]
  attr_reader :width

  # @return [Float]
  attr_reader :height

  # @return [Array<Player, NilClass>, NilClass]
  attr_reader :players

  # @return [Array<Hockeyist, NilClass>, NilClass]
  attr_reader :hockeyists

  # @return [Puck, NilClass]
  attr_reader :puck

  # @param [Integer] tick
  # @param [Integer] tick_count
  # @param [Float] width
  # @param [Float] height
  # @param [Array<Player, NilClass>, NilClass] players
  # @param [Array<Hockeyist, NilClass>, NilClass] hockeyists
  # @param [Puck, NilClass] puck
  def initialize(tick, tick_count, width, height, players, hockeyists, puck)
    @tick = tick
    @tick_count = tick_count
    @width = width
    @height = height
    @players = players
    @hockeyists = hockeyists
    @puck = puck
  end

  # @return [Player, NilClass]
  def get_my_player
    @players.each do |player|
      if player.me
        return player
      end
    end

    nil
  end

  # @return [Player, NilClass]
  def get_opponent_player
    @players.each do |player|
      unless player.me
        return player
      end
    end

    nil
  end
end