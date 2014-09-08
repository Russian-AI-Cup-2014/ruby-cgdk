require 'socket'
require './model/action_type'
require './model/game'
require './model/hockeyist'
require './model/hockeyist_state'
require './model/hockeyist_type'
require './model/move'
require './model/player'
require './model/player_context'
require './model/puck'
require './model/world'

# noinspection RubyTooManyMethodsInspection
class RemoteProcessClient
  LITTLE_ENDIAN_BYTE_ORDER = true

  BYTE_ORDER_FORMAT_STRING = LITTLE_ENDIAN_BYTE_ORDER ? '<' : '>'

  SIGNED_BYTE_SIZE_BYTES = 1
  INTEGER_SIZE_BYTES = 4
  LONG_SIZE_BYTES = 8
  DOUBLE_SIZE_BYTES = 8

  def initialize(host, port)
    @socket = TCPSocket::new(host, port)
  end

  def write_token_message(token)
    write_enum(MessageType::AUTHENTICATION_TOKEN)
    write_string(token)
  end

  def read_team_size_message
    ensure_message_type(read_enum(MessageType), MessageType::TEAM_SIZE)
    read_int
  end

  def write_protocol_version_message
    write_enum(MessageType::PROTOCOL_VERSION)
    write_int(1)
  end

  def read_game_context_message
    ensure_message_type(read_enum(MessageType), MessageType::GAME_CONTEXT)
    read_game
  end

  def read_player_context_message
    message_type = read_enum(MessageType)
    if message_type == MessageType::GAME_OVER
      return nil
    end

    ensure_message_type(message_type, MessageType::PLAYER_CONTEXT)
    read_player_context
  end

  def write_moves_message(moves)
    write_enum(MessageType::MOVES)
    write_moves(moves)
  end

  def read_game
    unless read_boolean
      return nil
    end

    Game::new(read_long, read_int, read_double, read_double, read_double, read_double, read_double, read_double,
              read_double, read_double, read_double, read_int, read_int, read_int, read_int, read_int, read_int,
              read_double, read_double, read_double, read_int, read_double, read_double, read_double, read_double,
              read_double, read_double, read_int, read_double, read_double, read_double, read_double, read_double,
              read_double, read_double, read_double, read_double, read_double, read_double, read_double, read_double,
              read_double, read_double, read_double, read_double, read_double, read_double, read_double, read_double,
              read_double, read_double, read_double, read_double, read_double, read_int, read_int, read_int, read_int,
              read_int, read_int, read_int, read_int, read_int, read_int, read_int, read_int, read_int, read_int,
              read_double, read_double)
  end

  def write_game(game)
    if game.nil?
      write_boolean(false)
    else
      write_boolean(true)

      write_long(game.random_seed)
      write_int(game.tick_count)
      write_double(game.world_width)
      write_double(game.world_height)
      write_double(game.goal_net_top)
      write_double(game.goal_net_width)
      write_double(game.goal_net_height)
      write_double(game.rink_top)
      write_double(game.rink_left)
      write_double(game.rink_bottom)
      write_double(game.rink_right)
      write_int(game.after_goal_state_tick_count)
      write_int(game.overtime_tick_count)
      write_int(game.default_action_cooldown_ticks)
      write_int(game.swing_action_cooldown_ticks)
      write_int(game.cancel_strike_action_cooldown_ticks)
      write_int(game.action_cooldown_ticks_after_losing_puck)
      write_double(game.stick_length)
      write_double(game.stick_sector)
      write_double(game.pass_sector)
      write_int(game.hockeyist_attribute_base_value)
      write_double(game.min_action_chance)
      write_double(game.max_action_chance)
      write_double(game.strike_angle_deviation)
      write_double(game.pass_angle_deviation)
      write_double(game.pick_up_puck_base_chance)
      write_double(game.take_puck_away_base_chance)
      write_int(game.max_effective_swing_ticks)
      write_double(game.strike_power_base_factor)
      write_double(game.strike_power_growth_factor)
      write_double(game.strike_puck_base_chance)
      write_double(game.knockdown_chance_factor)
      write_double(game.knockdown_ticks_factor)
      write_double(game.max_speed_to_allow_substitute)
      write_double(game.substitution_area_height)
      write_double(game.pass_power_factor)
      write_double(game.hockeyist_max_stamina)
      write_double(game.active_hockeyist_stamina_growth_per_tick)
      write_double(game.resting_hockeyist_stamina_growth_per_tick)
      write_double(game.zero_stamina_hockeyist_effectiveness_factor)
      write_double(game.speed_up_stamina_cost_factor)
      write_double(game.turn_stamina_cost_factor)
      write_double(game.take_puck_stamina_cost)
      write_double(game.swing_stamina_cost)
      write_double(game.strike_stamina_base_cost)
      write_double(game.strike_stamina_cost_growth_factor)
      write_double(game.cancel_strike_stamina_cost)
      write_double(game.pass_stamina_cost)
      write_double(game.goalie_max_speed)
      write_double(game.hockeyist_max_speed)
      write_double(game.struck_hockeyist_initial_speed_factor)
      write_double(game.hockeyist_speed_up_factor)
      write_double(game.hockeyist_speed_down_factor)
      write_double(game.hockeyist_turn_angle_factor)
      write_int(game.versatile_hockeyist_strength)
      write_int(game.versatile_hockeyist_endurance)
      write_int(game.versatile_hockeyist_dexterity)
      write_int(game.versatile_hockeyist_agility)
      write_int(game.forward_hockeyist_strength)
      write_int(game.forward_hockeyist_endurance)
      write_int(game.forward_hockeyist_dexterity)
      write_int(game.forward_hockeyist_agility)
      write_int(game.defenceman_hockeyist_strength)
      write_int(game.defenceman_hockeyist_endurance)
      write_int(game.defenceman_hockeyist_dexterity)
      write_int(game.defenceman_hockeyist_agility)
      write_int(game.min_random_hockeyist_parameter)
      write_int(game.max_random_hockeyist_parameter)
      write_double(game.struck_puck_initial_speed_factor)
      write_double(game.puck_binding_range)
    end
  end

  def read_games
    game_count = read_int
    if game_count < 0
      return nil
    end

    games = []

    game_count.times do |_|
      games.push(read_game)
    end

    games
  end

  def write_games(games)
    if games.nil?
      write_int(-1)
    else
      write_int(games.length)

      games.each do |game|
        write_game(game)
      end
    end
  end

  def read_hockeyist
    unless read_boolean
      return nil
    end

    Hockeyist::new(read_long, read_long, read_int, read_double, read_double, read_double, read_double, read_double,
                   read_double, read_double, read_double, read_boolean, read_enum(HockeyistType), read_int, read_int,
                   read_int, read_int, read_double, read_enum(HockeyistState), read_int, read_int, read_int, read_int,
                   read_enum(ActionType), read_boolean ? read_int : nil)
  end

  def write_hockeyist(hockeyist)
    if hockeyist.nil?
      write_boolean(false)
    else
      write_boolean(true)

      write_long(hockeyist.id)
      write_long(hockeyist.player_id)
      write_int(hockeyist.teammate_index)
      write_double(hockeyist.mass)
      write_double(hockeyist.radius)
      write_double(hockeyist.x)
      write_double(hockeyist.y)
      write_double(hockeyist.speed_x)
      write_double(hockeyist.speed_y)
      write_double(hockeyist.angle)
      write_double(hockeyist.angular_speed)
      write_boolean(hockeyist.teammate)
      write_enum(hockeyist.type)
      write_int(hockeyist.strength)
      write_int(hockeyist.endurance)
      write_int(hockeyist.dexterity)
      write_int(hockeyist.agility)
      write_double(hockeyist.stamina)
      write_enum(hockeyist.state)
      write_int(hockeyist.original_position_index)
      write_int(hockeyist.remaining_knockdown_ticks)
      write_int(hockeyist.remaining_cooldown_ticks)
      write_int(hockeyist.swing_ticks)
      write_enum(hockeyist.last_action)
      if hockeyist.last_action_tick.nil?
        write_boolean(false)
      else
        write_boolean(true)
        write_int(hockeyist.last_action_tick)
      end
    end
  end

  def read_hockeyists
    hockeyist_count = read_int
    if hockeyist_count < 0
      return nil
    end

    hockeyists = []

    hockeyist_count.times do |_|
      hockeyists.push(read_hockeyist)
    end

    hockeyists
  end

  def write_hockeyists(hockeyists)
    if hockeyists.nil?
      write_int(-1)
    else
      write_int(hockeyists.length)

      hockeyists.each do |hockeyist|
        write_hockeyist(hockeyist)
      end
    end
  end

  def read_move
    unless read_boolean
      return nil
    end

    move = Move::new

    move.speed_up = read_double
    move.turn = read_double
    move.action = read_enum(ActionType)
    if move.action == ActionType::PASS
      move.pass_power = read_double
      move.pass_angle = read_double
    elsif move.action == ActionType::SUBSTITUTE
      move.teammate_index = read_int
    end

    move
  end

  def write_move(move)
    if move.nil?
      write_boolean(false)
    else
      write_boolean(true)

      write_double(move.speed_up)
      write_double(move.turn)
      write_enum(move.action)
      if move.action == ActionType::PASS
        write_double(move.pass_power)
        write_double(move.pass_angle)
      elsif move.action == ActionType::SUBSTITUTE
        write_int(move.teammate_index)
      end
    end
  end

  def read_moves
    move_count = read_int
    if move_count < 0
      return nil
    end

    moves = []

    move_count.times do |_|
      moves.push(read_move)
    end

    moves
  end

  def write_moves(moves)
    if moves.nil?
      write_int(-1)
    else
      write_int(moves.length)

      moves.each do |move|
        write_move(move)
      end
    end
  end

  def read_player
    unless read_boolean
      return nil
    end

    Player::new(read_long, read_boolean, read_string, read_int, read_boolean, read_double, read_double, read_double,
                read_double, read_double, read_double, read_boolean, read_boolean)
  end

  def write_player(player)
    if player.nil?
      write_boolean(false)
    else
      write_boolean(true)

      write_long(player.id)
      write_boolean(player.me)
      write_string(player.name)
      write_int(player.goal_count)
      write_boolean(player.strategy_crashed)
      write_double(player.net_top)
      write_double(player.net_left)
      write_double(player.net_bottom)
      write_double(player.net_right)
      write_double(player.net_front)
      write_double(player.net_back)
      write_boolean(player.just_scored_goal)
      write_boolean(player.just_missed_goal)
    end
  end

  def read_players
    player_count = read_int
    if player_count < 0
      return nil
    end

    players = []

    player_count.times do |_|
      players.push(read_player)
    end

    players
  end

  def write_players(players)
    if players.nil?
      write_int(-1)
    else
      write_int(players.length)

      players.each do |player|
        write_player(player)
      end
    end
  end

  def read_player_context
    unless read_boolean
      return nil
    end

    PlayerContext::new(read_hockeyists, read_world)
  end

  def write_player_context(player_context)
    if player_context.nil?
      write_boolean(false)
    else
      write_boolean(true)

      write_hockeyists(player_context.hockeyists)
      write_world(player_context.world)
    end
  end

  def read_player_contexts
    player_context_count = read_int
    if player_context_count < 0
      return nil
    end

    player_contexts = []

    player_context_count.times do |_|
      player_contexts.push(read_player_context)
    end

    player_contexts
  end

  def write_player_contexts(player_contexts)
    if player_contexts.nil?
      write_int(-1)
    else
      write_int(player_contexts.length)

      player_contexts.each do |player_context|
        write_player_context(player_context)
      end
    end
  end

  def read_puck
    unless read_boolean
      return nil
    end

    Puck::new(read_long, read_double, read_double, read_double, read_double, read_double, read_double, read_long,
              read_long)
  end

  def write_puck(puck)
    if puck.nil?
      write_boolean(false)
    else
      write_boolean(true)

      write_long(puck.id)
      write_double(puck.mass)
      write_double(puck.radius)
      write_double(puck.x)
      write_double(puck.y)
      write_double(puck.speed_x)
      write_double(puck.speed_y)
      write_long(puck.owner_hockeyist_id)
      write_long(puck.owner_player_id)
    end
  end

  def read_pucks
    puck_count = read_int
    if puck_count < 0
      return nil
    end

    pucks = []

    puck_count.times do |_|
      pucks.push(read_puck)
    end

    pucks
  end

  def write_pucks(pucks)
    if pucks.nil?
      write_int(-1)
    else
      write_int(pucks.length)

      pucks.each do |puck|
        write_puck(puck)
      end
    end
  end

  def read_world
    unless read_boolean
      return nil
    end

    World::new(read_int, read_int, read_double, read_double, read_players, read_hockeyists, read_puck)
  end

  def write_world(world)
    if world.nil?
      write_boolean(false)
    else
      write_boolean(true)

      write_int(world.tick)
      write_int(world.tick_count)
      write_double(world.width)
      write_double(world.height)
      write_players(world.players)
      write_hockeyists(world.hockeyists)
      write_puck(world.puck)
    end
  end

  def read_worlds
    world_count = read_int
    if world_count < 0
      return nil
    end

    worlds = []

    world_count.times do |_|
      worlds.push(read_world)
    end

    worlds
  end

  def write_worlds(worlds)
    if worlds.nil?
      write_int(-1)
    else
      write_int(worlds.length)

      worlds.each do |world|
        write_world(world)
      end
    end
  end

  def ensure_message_type(actual_type, expected_type)
    if actual_type != expected_type
      raise ArgumentError "Received wrong message [actual=#{actual_type}, expected=#{expected_type}]."
    end
  end

  def read_enum(enum_class)
    byte_array = read_bytes(SIGNED_BYTE_SIZE_BYTES)
    value = byte_array.unpack('c')[0]

    value >= 0 && value < enum_class::COUNT ? value : nil
  end

  def write_enum(value)
    write_bytes([value.nil? ? -1 : value].pack('c'))
  end

  def read_string
    length = read_int
    if length == -1
      return nil
    end

    read_bytes(length)
  end

  def write_string(value)
    if value.nil?
      write_int(-1)
      return
    end

    write_int(value.length)
    write_bytes(value)
  end

  def read_boolean
    byte_array = read_bytes(SIGNED_BYTE_SIZE_BYTES)
    byte_array.unpack('c')[0] != 0
  end

  def write_boolean(value)
    write_bytes([value ? 1 : 0].pack('c'))
  end

  def read_int
    byte_array = read_bytes(INTEGER_SIZE_BYTES)
    byte_array.unpack('l' + BYTE_ORDER_FORMAT_STRING)[0]
  end

  def write_int(value)
    write_bytes([value].pack('l' + BYTE_ORDER_FORMAT_STRING))
  end

  def read_long
    byte_array = read_bytes(LONG_SIZE_BYTES)
    byte_array.unpack('q' + BYTE_ORDER_FORMAT_STRING)[0]
  end

  def write_long(value)
    write_bytes([value].pack('q' + BYTE_ORDER_FORMAT_STRING))
  end

  def read_double
    byte_array = read_bytes(DOUBLE_SIZE_BYTES)
    byte_array.unpack(LITTLE_ENDIAN_BYTE_ORDER ? 'E' : 'G')[0]
  end

  def write_double(value)
    write_bytes([value].pack(LITTLE_ENDIAN_BYTE_ORDER ? 'E' : 'G'))
  end

  def read_bytes(byte_count)
    byte_array = ''

    while byte_array.length < byte_count
      chunk = @socket.recv(byte_count - byte_array.length)

      if chunk.length == 0
        raise IOError "Can't read #{byte_count} bytes from input stream."
      end

      byte_array += chunk
    end

    byte_array
  end

  def write_bytes(byte_array)
    @socket.write(byte_array)
  end

  def close
    @socket.close
  end

  module MessageType
    UNKNOWN = 0
    GAME_OVER = 1
    AUTHENTICATION_TOKEN = 2
    TEAM_SIZE = 3
    PROTOCOL_VERSION = 4
    GAME_CONTEXT = 5
    PLAYER_CONTEXT = 6
    MOVES = 7
    COUNT = 8
  end
end