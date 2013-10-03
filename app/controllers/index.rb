
get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/user_input' do
  user_input = params[:message]
  p user_input
  @message = []
  @message << CatFacts.invalid_command(user_input) + CatFacts.unsubscribe_msg
  @message << CatFacts.reminder
  erb :_message, layout: !request.xhr?
end
