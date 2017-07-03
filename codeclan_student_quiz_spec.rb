require('minitest/autorun')
require_relative('./codeclan_student_quiz.rb')


class CodeClanStudentQuizTest < MiniTest::Test

  def test_student_name
    student1 = CodeClanStudent.new("Guy", 14)
    assert_equal("Guy", student1.get_name )
  end

  def test_student_cohort
    student1 = CodeClanStudent.new("Guy", 14)
    assert_equal(14, student1.get_cohort )
  end

  def test_update_name
    student1 = CodeClanStudent.new("Guy", 14)
    assert_equal("Yan", student1.update_name("Yan") )
  end

  def test_update_cohort
    student1 = CodeClanStudent.new("Guy", 14)
    assert_equal(15, student1.update_cohort(15))
  end

  def test_student_talks
    student1 = CodeClanStudent.new("Guy", 14)
    assert_equal("Hello my name is Guy, I can talk!", student1.student_talk)
  end

  def test_student_fav_lang
    student1 = CodeClanStudent.new("Guy", 14)
    assert_equal("I love Ruby", student1.fav_lang("Ruby"))
  end


end