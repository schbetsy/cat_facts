class CatFacts
  def self.intro
    "Thanks for subscribing to Cat Facts! You'll be recieving fun hourly facts about CATS! "
  end

  def self.msg_start
    if [true, false, false].sample
      "Command not recognized. "
    else
      "Remember, every time you text, you will receive an instant Cat Fact!"
    end
  end

  def self.random_fact
    "Did you know? #{Message.all.sample.fact}"
  end


  def self.msg_end
    if [true, false, false].sample
      self.unsubscribe_msg
    else
      " Thanks for choosing Cat Facts!"
    end
  end

  def self.unsubscribe_msg
    " <To cancel Cat Facts, reply '#{self.unsub_string}'.> "
  end

  def self.unsub_string
    Faker::Base.regexify(/[a-zA-Z0-9]{12}/)
  end

end
