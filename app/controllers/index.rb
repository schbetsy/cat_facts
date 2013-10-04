
get '/' do
	erb :index
  # redirect to '/subscribe'
end

get '/subscribe' do
	@body = params[:Body]
	@sender_num = params[:From]
  erb :twil_gather
end

post '/user_input' do
  user_input = params[:message]
  p user_input

  @message = compile_message

  erb :_message, layout: !request.xhr?
end
