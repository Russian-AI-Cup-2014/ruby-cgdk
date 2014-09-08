# noinspection RubyTooManyInstanceVariablesInspection
class Player
  # @return [Integer]
  attr_reader :id

  # @return [TrueClass, FalseClass]
  attr_reader :me

  # @return [String, NilClass]
  attr_reader :name

  # @return [Integer]
  attr_reader :goal_count

  # @return [TrueClass, FalseClass]
  attr_reader :strategy_crashed

  # @return [Float]
  attr_reader :net_top

  # @return [Float]
  attr_reader :net_left

  # @return [Float]
  attr_reader :net_bottom

  # @return [Float]
  attr_reader :net_right

  # @return [Float]
  attr_reader :net_front

  # @return [Float]
  attr_reader :net_back

  # @return [TrueClass, FalseClass]
  attr_reader :just_scored_goal

  # @return [TrueClass, FalseClass]
  attr_reader :just_missed_goal

  # @param [Integer] id
  # @param [TrueClass, FalseClass] me
  # @param [String, NilClass] name
  # @param [Integer] goal_count
  # @param [TrueClass, FalseClass] strategy_crashed
  # @param [Float] net_top
  # @param [Float] net_left
  # @param [Float] net_bottom
  # @param [Float] net_right
  # @param [Float] net_front
  # @param [Float] net_back
  # @param [TrueClass, FalseClass] just_scored_goal
  # @param [TrueClass, FalseClass] just_missed_goal
  def initialize(id, me, name, goal_count, strategy_crashed, net_top, net_left, net_bottom, net_right, net_front,
                 net_back, just_scored_goal, just_missed_goal)
    @id = id
    @me = me
    @name = name
    @goal_count = goal_count
    @strategy_crashed = strategy_crashed
    @net_top = net_top
    @net_left = net_left
    @net_bottom = net_bottom
    @net_right = net_right
    @net_front = net_front
    @net_back = net_back
    @just_scored_goal = just_scored_goal
    @just_missed_goal = just_missed_goal
  end
end