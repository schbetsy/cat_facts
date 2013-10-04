
get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/user_input' do
  user_input = params[:message]
  p user_input
  @message = []

  if [true, false].sample
    @message << CatFacts.invalid_command
  else
    @message << CatFacts.reminder
  end

  @message << CatFacts.random_fact + CatFacts.thanks

  erb :_message, layout: !request.xhr?
end
