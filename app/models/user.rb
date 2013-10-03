class User < ActiveRecord::Base
  
  def send_fact(fact)
    msg = "You're subscribed to Cat Facts! Did you know? #{fact}"
    sender = Twilio::REST::Client.new(ENV["ACCOUNT_SID"], ENV["AUTH_TOKEN"])
    sender.account.messages.create( to: self.phone_number,
                                    from: ENV["NUMBER"],
                                    body: msg)
  end
end
