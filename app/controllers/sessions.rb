get '/sessions/new' do
  erb :"sessions/new"
end

post '/sessions' do
  @user = User.find_by(username: params[:username])
  if @user && @user.authenticated?(params[:password])
    session[:user_id] = @user.id
    redirect '/'
  else
    status 401
    @errors = ["invalid username/password combo"]
    erb :"sessions/new"
  end
end

delete '/sessions' do
  authenticate!
  session.delete(:user_id)
  redirect '/'
end
