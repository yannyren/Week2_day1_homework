class SportsTeam

  attr_reader(:name)
  attr_accessor(:players, :coach, :points)

  def initialize(team_name, players, coach, points)
    @name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  def get_team_name
    return @name
  end

  def get_players
    return @players
  end

  def get_coach
    return @coach
  end

  def update_coach(new_name)
    @coach = new_name
  end

  def add_player(new_player)
    @players << new_player
  end

  def check_player_name?(name)
    @players.include?(name)
  end

  def add_points(new_points)
    @points += new_points
  end


end