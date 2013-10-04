class User < ActiveRecord::Base

	def welcome
		send_fact([CatFacts.intro])
	end
  
  def send_fact(msg)
    sender = Twilio::REST::Client.new(ENV["ACCOUNT_SID"], ENV["AUTH_TOKEN"])
    msg.each do |m|
    	sender.account.messages.create( to: self.phone_number,
                                    from: ENV["NUMBER"],
                                    body: m)
    end
  end
end
