require './model/action_type'
require './model/hockeyist_state'
require './model/hockeyist_type'
require './model/unit'

# noinspection RubyParameterNamingConvention,RubyTooManyInstanceVariablesInspection
class Hockeyist < Unit
  # @return [Integer]
  attr_reader :player_id

  # @return [Integer]
  attr_reader :teammate_index

  # @return [TrueClass, FalseClass]
  attr_reader :teammate

  # @return [Integer, NilClass]
  attr_reader :type

  # @return [Integer]
  attr_reader :strength

  # @return [Integer]
  attr_reader :endurance

  # @return [Integer]
  attr_reader :dexterity

  # @return [Integer]
  attr_reader :agility

  # @return [Float]
  attr_reader :stamina

  # @return [Integer, NilClass]
  attr_reader :state

  # @return [Integer]
  attr_reader :original_position_index

  # @return [Integer]
  attr_reader :remaining_knockdown_ticks

  # @return [Integer]
  attr_reader :remaining_cooldown_ticks

  # @return [Integer]
  attr_reader :swing_ticks

  # @return [Integer, NilClass]
  attr_reader :last_action

  # @return [Integer, NilClass]
  attr_reader :last_action_tick

  # @param [Integer] id
  # @param [Integer] player_id
  # @param [Integer] teammate_index
  # @param [Float] mass
  # @param [Float] radius
  # @param [Float] x
  # @param [Float] y
  # @param [Float] speed_x
  # @param [Float] speed_y
  # @param [Float] angle
  # @param [Float] angular_speed
  # @param [TrueClass, FalseClass] teammate
  # @param [Integer, NilClass] type
  # @param [Integer] strength
  # @param [Integer] endurance
  # @param [Integer] dexterity
  # @param [Integer] agility
  # @param [Float] stamina
  # @param [Integer, NilClass] state
  # @param [Integer] original_position_index
  # @param [Integer] remaining_knockdown_ticks
  # @param [Integer] remaining_cooldown_ticks
  # @param [Integer] swing_ticks
  # @param [Integer, NilClass] last_action
  # @param [Integer, NilClass] last_action_tick
  def initialize(id, player_id, teammate_index, mass, radius, x, y, speed_x, speed_y, angle, angular_speed, teammate,
                 type, strength, endurance, dexterity, agility, stamina, state, original_position_index,
                 remaining_knockdown_ticks, remaining_cooldown_ticks, swing_ticks, last_action, last_action_tick)
    super(id, mass, radius, x, y, speed_x, speed_y, angle, angular_speed)

    @player_id = player_id
    @teammate_index = teammate_index
    @teammate = teammate
    @type = type
    @strength = strength
    @endurance = endurance
    @dexterity = dexterity
    @agility = agility
    @stamina = stamina
    @state = state
    @original_position_index = original_position_index
    @remaining_knockdown_ticks = remaining_knockdown_ticks
    @remaining_cooldown_ticks = remaining_cooldown_ticks
    @swing_ticks = swing_ticks
    @last_action = last_action
    @last_action_tick = last_action_tick
  end
end