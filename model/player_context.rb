require './model/hockeyist'
require './model/world'

class PlayerContext
  # @return [Array<Hockeyist, NilClass>, NilClass]
  attr_reader :hockeyists

  # @return [World, NilClass]
  attr_reader :world

  # @param [Array<Hockeyist, NilClass>, NilClass] hockeyists
  # @param [World, NilClass] world
  def initialize(hockeyists, world)
    @hockeyists = hockeyists
    @world = world
  end
end