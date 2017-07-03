require('minitest/autorun')
require_relative('./sport_team.rb')


class SportsTeamTest < MiniTest::Test

  def test_get_team_name
    team1 = SportsTeam.new("CodeClan Cool Cats", ["Guy", "Yan"], "Keith", 0 )
    assert_equal("CodeClan Cool Cats", team1.get_team_name)
  end

  def test_get_players
    team1 = SportsTeam.new("CodeClan Cool Cats", ["Guy", "Yan"], "Keith", 0 )
    assert_equal(["Guy", "Yan"], team1.get_players)
  end

  def test_get_coach
    team1 = SportsTeam.new("CodeClan Cool Cats", ["Guy", "Yan"], "Keith", 0 )
    assert_equal("Keith", team1.get_coach)
  end

  def test_update_coach
    team1 = SportsTeam.new("CodeClan Cool Cats", ["Guy", "Yan"], "Keith", 0 )
    assert_equal("John", team1.update_coach("John"))
  end

  def test_add_player
    team1 = SportsTeam.new("CodeClan Cool Cats", ["Guy", "Yan"], "Keith", 0 )
    assert_equal(["Guy", "Yan", "Tracey"], team1.add_player("Tracey"))
  end

  def test_check_player_name__true
    team1 = SportsTeam.new("CodeClan Cool Cats", ["Guy", "Yan"], "Keith", 0 )
    assert_equal(true, team1.check_player_name?("Guy"))
  end
  
  def test_check_player_name__false
    team1 = SportsTeam.new("CodeClan Cool Cats", ["Guy", "Yan"], "Keith", 0 )
    assert_equal(false, team1.check_player_name?("Keith"))
  end

  def test_add_points
    team1 = SportsTeam.new("CodeClan Cool Cats", ["Guy", "Yan"], "Keith", 0)
    assert_equal(1, team1.add_points(1))
  end


end