helpers do

  def cancel

  end

  def compile_message
    message = []

    message << CatFacts.msg_start
    message << CatFacts.random_fact
    message << CatFacts.msg_end
  end

end
