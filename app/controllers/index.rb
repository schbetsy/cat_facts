
get '/' do
	erb :subscribe
	# erb :index
  # redirect to '/subscribe'
end

get '/success' do
	erb :subscribed
end

get '/subscribe' do
	body = params[:Body]
	num = params[:From]
	user = User.find_by_phone_number(num)
	if user 
		message = compile_message
		user.send_fact(message)
	else
		user = User.create(phone_number: num, subscribed: true)
		user.welcome
	end

  # erb :twil_gather
end

post '/subscribe' do
	user = User.find_or_create_by_phone_number(phone_number: params[:From])
	user.welcome
	redirect to '/success'
end

# post '/user_input' do
#   user_input = params[:message]
#   p user_input

#   @message = compile_message

#   erb :_message, layout: !request.xhr?
# end
