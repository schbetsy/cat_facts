class User < ActiveRecord::Base
  
  def send_fact(msg)
    sender = Twilio::REST::Client.new(ENV["ACCOUNT_SID"], ENV["AUTH_TOKEN"])
    sender.account.messages.create( to: self.phone_number,
                                    from: ENV["NUMBER"],
                                    body: msg)
  end
end
