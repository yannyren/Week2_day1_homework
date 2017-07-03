class CodeClanStudent

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def get_name
    return @name
  end

  def get_cohort
    return @cohort
  end

  def update_name(new_name)
    @name = new_name
  end

  def update_cohort(new_cohort)
    @cohort = new_cohort
  end

  def student_talk
    return "Hello my name is #{@name}, I can talk!"
  end

  def fav_lang(lang)
    return "I love #{lang}"
  end

end