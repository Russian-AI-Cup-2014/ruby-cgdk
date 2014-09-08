require './model/action_type'

class Move
  # @return [Float]
  attr_accessor :speed_up

  # @return [Float]
  attr_accessor :turn

  # @return [Integer, NilClass]
  attr_accessor :action

  # @return [Float]
  attr_accessor :pass_power

  # @return [Float]
  attr_accessor :pass_angle

  # @return [Integer]
  attr_accessor :teammate_index

  def initialize
    @speed_up = 0.0
    @turn = 0.0
    @action = ActionType::NONE
    @pass_power = 1.0
    @pass_angle = 0.0
    @teammate_index = -1
  end
end