class CatFacts
  def self.intro
    "Congratulations! You're subscribed to Cat Facts! You'll be recieving fun daily facts about CATS! "
  end

  def self.invalid_command(msg = "")
    "&lt Command '#{msg}' not recognized. &gt "
  end

  def self.unsubscribe_msg
    "To unsubscribe, simply reply '#{self.unsub_string}'. "
  end

  def self.reminder
    "Remember, every time you text, you will recieve an instant Cat Fact!"
  end

  def self.unsub_string
    "AAA"
  end
end
