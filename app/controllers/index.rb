get '/' do
  redirect '/sessions/new'
end

get '/404' do
  erb :"404"
end
