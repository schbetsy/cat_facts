
get '/' do
  redirect to '/subscribe'
end

get '/subscribe' do
  erb :index
end

post '/user_input' do
  user_input = params[:message]
  p user_input

  @message = compile_message

  erb :_message, layout: !request.xhr?
end
