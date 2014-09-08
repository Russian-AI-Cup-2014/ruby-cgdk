require './model/unit'

class Puck < Unit
  # @return [Integer]
  attr_reader :owner_hockeyist_id

  # @return [Integer]
  attr_reader :owner_player_id

  # @param [Integer] id
  # @param [Float] mass
  # @param [Float] radius
  # @param [Float] x
  # @param [Float] y
  # @param [Float] speed_x
  # @param [Float] speed_y
  # @param [Integer] owner_hockeyist_id
  # @param [Integer] owner_player_id
  def initialize(id, mass, radius, x, y, speed_x, speed_y, owner_hockeyist_id, owner_player_id)
    super(id, mass, radius, x, y, speed_x, speed_y, 0.0, 0.0)

    @owner_hockeyist_id = owner_hockeyist_id
    @owner_player_id = owner_player_id
  end
end