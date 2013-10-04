class CatFacts
  def self.intro
    "Thanks for subscribing to Cat Facts! You'll be recieving fun daily facts about CATS! "
  end

  def self.invalid_command
    "Command not recognized. "
  end

  def self.unsubscribe_msg
    "To unsubscribe, simply reply '#{self.unsub_string}'. "
  end

  def self.reminder
    "Remember, every time you text, you will receive an instant Cat Fact!"
  end

  def self.thanks
    " Thanks for choosing Cat Facts!"
  end

  def self.unsub_string
    Faker::Base.regexify(/[a-zA-Z0-9]{12}/)
  end

  def self.random_fact
    "Did you know? #{Message.all.sample.fact}"
  end
end
