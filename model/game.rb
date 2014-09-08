# noinspection RubyInstanceVariableNamingConvention,RubyParameterNamingConvention,RubyTooManyInstanceVariablesInspection
class Game
  # @return [Integer]
  attr_reader :random_seed

  # @return [Integer]
  attr_reader :tick_count

  # @return [Float]
  attr_reader :world_width

  # @return [Float]
  attr_reader :world_height

  # @return [Float]
  attr_reader :goal_net_top

  # @return [Float]
  attr_reader :goal_net_width

  # @return [Float]
  attr_reader :goal_net_height

  # @return [Float]
  attr_reader :rink_top

  # @return [Float]
  attr_reader :rink_left

  # @return [Float]
  attr_reader :rink_bottom

  # @return [Float]
  attr_reader :rink_right

  # @return [Integer]
  attr_reader :after_goal_state_tick_count

  # @return [Integer]
  attr_reader :overtime_tick_count

  # @return [Integer]
  attr_reader :default_action_cooldown_ticks

  # @return [Integer]
  attr_reader :swing_action_cooldown_ticks

  # @return [Integer]
  attr_reader :cancel_strike_action_cooldown_ticks

  # @return [Integer]
  attr_reader :action_cooldown_ticks_after_losing_puck

  # @return [Float]
  attr_reader :stick_length

  # @return [Float]
  attr_reader :stick_sector

  # @return [Float]
  attr_reader :pass_sector

  # @return [Integer]
  attr_reader :hockeyist_attribute_base_value

  # @return [Float]
  attr_reader :min_action_chance

  # @return [Float]
  attr_reader :max_action_chance

  # @return [Float]
  attr_reader :strike_angle_deviation

  # @return [Float]
  attr_reader :pass_angle_deviation

  # @return [Float]
  attr_reader :pick_up_puck_base_chance

  # @return [Float]
  attr_reader :take_puck_away_base_chance

  # @return [Integer]
  attr_reader :max_effective_swing_ticks

  # @return [Float]
  attr_reader :strike_power_base_factor

  # @return [Float]
  attr_reader :strike_power_growth_factor

  # @return [Float]
  attr_reader :strike_puck_base_chance

  # @return [Float]
  attr_reader :knockdown_chance_factor

  # @return [Float]
  attr_reader :knockdown_ticks_factor

  # @return [Float]
  attr_reader :max_speed_to_allow_substitute

  # @return [Float]
  attr_reader :substitution_area_height

  # @return [Float]
  attr_reader :pass_power_factor

  # @return [Float]
  attr_reader :hockeyist_max_stamina

  # @return [Float]
  attr_reader :active_hockeyist_stamina_growth_per_tick

  # @return [Float]
  attr_reader :resting_hockeyist_stamina_growth_per_tick

  # @return [Float]
  attr_reader :zero_stamina_hockeyist_effectiveness_factor

  # @return [Float]
  attr_reader :speed_up_stamina_cost_factor

  # @return [Float]
  attr_reader :turn_stamina_cost_factor

  # @return [Float]
  attr_reader :take_puck_stamina_cost

  # @return [Float]
  attr_reader :swing_stamina_cost

  # @return [Float]
  attr_reader :strike_stamina_base_cost

  # @return [Float]
  attr_reader :strike_stamina_cost_growth_factor

  # @return [Float]
  attr_reader :cancel_strike_stamina_cost

  # @return [Float]
  attr_reader :pass_stamina_cost

  # @return [Float]
  attr_reader :goalie_max_speed

  # @return [Float]
  attr_reader :hockeyist_max_speed

  # @return [Float]
  attr_reader :struck_hockeyist_initial_speed_factor

  # @return [Float]
  attr_reader :hockeyist_speed_up_factor

  # @return [Float]
  attr_reader :hockeyist_speed_down_factor

  # @return [Float]
  attr_reader :hockeyist_turn_angle_factor

  # @return [Integer]
  attr_reader :versatile_hockeyist_strength

  # @return [Integer]
  attr_reader :versatile_hockeyist_endurance

  # @return [Integer]
  attr_reader :versatile_hockeyist_dexterity

  # @return [Integer]
  attr_reader :versatile_hockeyist_agility

  # @return [Integer]
  attr_reader :forward_hockeyist_strength

  # @return [Integer]
  attr_reader :forward_hockeyist_endurance

  # @return [Integer]
  attr_reader :forward_hockeyist_dexterity

  # @return [Integer]
  attr_reader :forward_hockeyist_agility

  # @return [Integer]
  attr_reader :defenceman_hockeyist_strength

  # @return [Integer]
  attr_reader :defenceman_hockeyist_endurance

  # @return [Integer]
  attr_reader :defenceman_hockeyist_dexterity

  # @return [Integer]
  attr_reader :defenceman_hockeyist_agility

  # @return [Integer]
  attr_reader :min_random_hockeyist_parameter

  # @return [Integer]
  attr_reader :max_random_hockeyist_parameter

  # @return [Float]
  attr_reader :struck_puck_initial_speed_factor

  # @return [Float]
  attr_reader :puck_binding_range

  # @param [Integer] random_seed
  # @param [Integer] tick_count
  # @param [Float] world_width
  # @param [Float] world_height
  # @param [Float] goal_net_top
  # @param [Float] goal_net_width
  # @param [Float] goal_net_height
  # @param [Float] rink_top
  # @param [Float] rink_left
  # @param [Float] rink_bottom
  # @param [Float] rink_right
  # @param [Integer] after_goal_state_tick_count
  # @param [Integer] overtime_tick_count
  # @param [Integer] default_action_cooldown_ticks
  # @param [Integer] swing_action_cooldown_ticks
  # @param [Integer] cancel_strike_action_cooldown_ticks
  # @param [Integer] action_cooldown_ticks_after_losing_puck
  # @param [Float] stick_length
  # @param [Float] stick_sector
  # @param [Float] pass_sector
  # @param [Integer] hockeyist_attribute_base_value
  # @param [Float] min_action_chance
  # @param [Float] max_action_chance
  # @param [Float] strike_angle_deviation
  # @param [Float] pass_angle_deviation
  # @param [Float] pick_up_puck_base_chance
  # @param [Float] take_puck_away_base_chance
  # @param [Integer] max_effective_swing_ticks
  # @param [Float] strike_power_base_factor
  # @param [Float] strike_power_growth_factor
  # @param [Float] strike_puck_base_chance
  # @param [Float] knockdown_chance_factor
  # @param [Float] knockdown_ticks_factor
  # @param [Float] max_speed_to_allow_substitute
  # @param [Float] substitution_area_height
  # @param [Float] pass_power_factor
  # @param [Float] hockeyist_max_stamina
  # @param [Float] active_hockeyist_stamina_growth_per_tick
  # @param [Float] resting_hockeyist_stamina_growth_per_tick
  # @param [Float] zero_stamina_hockeyist_effectiveness_factor
  # @param [Float] speed_up_stamina_cost_factor
  # @param [Float] turn_stamina_cost_factor
  # @param [Float] take_puck_stamina_cost
  # @param [Float] swing_stamina_cost
  # @param [Float] strike_stamina_base_cost
  # @param [Float] strike_stamina_cost_growth_factor
  # @param [Float] cancel_strike_stamina_cost
  # @param [Float] pass_stamina_cost
  # @param [Float] goalie_max_speed
  # @param [Float] hockeyist_max_speed
  # @param [Float] struck_hockeyist_initial_speed_factor
  # @param [Float] hockeyist_speed_up_factor
  # @param [Float] hockeyist_speed_down_factor
  # @param [Float] hockeyist_turn_angle_factor
  # @param [Integer] versatile_hockeyist_strength
  # @param [Integer] versatile_hockeyist_endurance
  # @param [Integer] versatile_hockeyist_dexterity
  # @param [Integer] versatile_hockeyist_agility
  # @param [Integer] forward_hockeyist_strength
  # @param [Integer] forward_hockeyist_endurance
  # @param [Integer] forward_hockeyist_dexterity
  # @param [Integer] forward_hockeyist_agility
  # @param [Integer] defenceman_hockeyist_strength
  # @param [Integer] defenceman_hockeyist_endurance
  # @param [Integer] defenceman_hockeyist_dexterity
  # @param [Integer] defenceman_hockeyist_agility
  # @param [Integer] min_random_hockeyist_parameter
  # @param [Integer] max_random_hockeyist_parameter
  # @param [Float] struck_puck_initial_speed_factor
  # @param [Float] puck_binding_range
  def initialize(random_seed, tick_count, world_width, world_height, goal_net_top, goal_net_width, goal_net_height,
                 rink_top, rink_left, rink_bottom, rink_right, after_goal_state_tick_count, overtime_tick_count,
                 default_action_cooldown_ticks, swing_action_cooldown_ticks, cancel_strike_action_cooldown_ticks,
                 action_cooldown_ticks_after_losing_puck, stick_length, stick_sector, pass_sector,
                 hockeyist_attribute_base_value, min_action_chance, max_action_chance, strike_angle_deviation,
                 pass_angle_deviation, pick_up_puck_base_chance, take_puck_away_base_chance, max_effective_swing_ticks,
                 strike_power_base_factor, strike_power_growth_factor, strike_puck_base_chance, knockdown_chance_factor,
                 knockdown_ticks_factor, max_speed_to_allow_substitute, substitution_area_height, pass_power_factor,
                 hockeyist_max_stamina, active_hockeyist_stamina_growth_per_tick,
                 resting_hockeyist_stamina_growth_per_tick, zero_stamina_hockeyist_effectiveness_factor,
                 speed_up_stamina_cost_factor, turn_stamina_cost_factor, take_puck_stamina_cost, swing_stamina_cost,
                 strike_stamina_base_cost, strike_stamina_cost_growth_factor, cancel_strike_stamina_cost,
                 pass_stamina_cost, goalie_max_speed, hockeyist_max_speed, struck_hockeyist_initial_speed_factor,
                 hockeyist_speed_up_factor, hockeyist_speed_down_factor, hockeyist_turn_angle_factor,
                 versatile_hockeyist_strength, versatile_hockeyist_endurance, versatile_hockeyist_dexterity,
                 versatile_hockeyist_agility, forward_hockeyist_strength, forward_hockeyist_endurance,
                 forward_hockeyist_dexterity, forward_hockeyist_agility, defenceman_hockeyist_strength,
                 defenceman_hockeyist_endurance, defenceman_hockeyist_dexterity, defenceman_hockeyist_agility,
                 min_random_hockeyist_parameter, max_random_hockeyist_parameter, struck_puck_initial_speed_factor,
                 puck_binding_range)
    @random_seed = random_seed
    @tick_count = tick_count
    @world_width = world_width
    @world_height = world_height
    @goal_net_top = goal_net_top
    @goal_net_width = goal_net_width
    @goal_net_height = goal_net_height
    @rink_top = rink_top
    @rink_left = rink_left
    @rink_bottom = rink_bottom
    @rink_right = rink_right
    @after_goal_state_tick_count = after_goal_state_tick_count
    @overtime_tick_count = overtime_tick_count
    @default_action_cooldown_ticks = default_action_cooldown_ticks
    @swing_action_cooldown_ticks = swing_action_cooldown_ticks
    @cancel_strike_action_cooldown_ticks = cancel_strike_action_cooldown_ticks
    @action_cooldown_ticks_after_losing_puck = action_cooldown_ticks_after_losing_puck
    @stick_length = stick_length
    @stick_sector = stick_sector
    @pass_sector = pass_sector
    @hockeyist_attribute_base_value = hockeyist_attribute_base_value
    @min_action_chance = min_action_chance
    @max_action_chance = max_action_chance
    @strike_angle_deviation = strike_angle_deviation
    @pass_angle_deviation = pass_angle_deviation
    @pick_up_puck_base_chance = pick_up_puck_base_chance
    @take_puck_away_base_chance = take_puck_away_base_chance
    @max_effective_swing_ticks = max_effective_swing_ticks
    @strike_power_base_factor = strike_power_base_factor
    @strike_power_growth_factor = strike_power_growth_factor
    @strike_puck_base_chance = strike_puck_base_chance
    @knockdown_chance_factor = knockdown_chance_factor
    @knockdown_ticks_factor = knockdown_ticks_factor
    @max_speed_to_allow_substitute = max_speed_to_allow_substitute
    @substitution_area_height = substitution_area_height
    @pass_power_factor = pass_power_factor
    @hockeyist_max_stamina = hockeyist_max_stamina
    @active_hockeyist_stamina_growth_per_tick = active_hockeyist_stamina_growth_per_tick
    @resting_hockeyist_stamina_growth_per_tick = resting_hockeyist_stamina_growth_per_tick
    @zero_stamina_hockeyist_effectiveness_factor = zero_stamina_hockeyist_effectiveness_factor
    @speed_up_stamina_cost_factor = speed_up_stamina_cost_factor
    @turn_stamina_cost_factor = turn_stamina_cost_factor
    @take_puck_stamina_cost = take_puck_stamina_cost
    @swing_stamina_cost = swing_stamina_cost
    @strike_stamina_base_cost = strike_stamina_base_cost
    @strike_stamina_cost_growth_factor = strike_stamina_cost_growth_factor
    @cancel_strike_stamina_cost = cancel_strike_stamina_cost
    @pass_stamina_cost = pass_stamina_cost
    @goalie_max_speed = goalie_max_speed
    @hockeyist_max_speed = hockeyist_max_speed
    @struck_hockeyist_initial_speed_factor = struck_hockeyist_initial_speed_factor
    @hockeyist_speed_up_factor = hockeyist_speed_up_factor
    @hockeyist_speed_down_factor = hockeyist_speed_down_factor
    @hockeyist_turn_angle_factor = hockeyist_turn_angle_factor
    @versatile_hockeyist_strength = versatile_hockeyist_strength
    @versatile_hockeyist_endurance = versatile_hockeyist_endurance
    @versatile_hockeyist_dexterity = versatile_hockeyist_dexterity
    @versatile_hockeyist_agility = versatile_hockeyist_agility
    @forward_hockeyist_strength = forward_hockeyist_strength
    @forward_hockeyist_endurance = forward_hockeyist_endurance
    @forward_hockeyist_dexterity = forward_hockeyist_dexterity
    @forward_hockeyist_agility = forward_hockeyist_agility
    @defenceman_hockeyist_strength = defenceman_hockeyist_strength
    @defenceman_hockeyist_endurance = defenceman_hockeyist_endurance
    @defenceman_hockeyist_dexterity = defenceman_hockeyist_dexterity
    @defenceman_hockeyist_agility = defenceman_hockeyist_agility
    @min_random_hockeyist_parameter = min_random_hockeyist_parameter
    @max_random_hockeyist_parameter = max_random_hockeyist_parameter
    @struck_puck_initial_speed_factor = struck_puck_initial_speed_factor
    @puck_binding_range = puck_binding_range
  end
end