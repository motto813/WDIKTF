get '/' do
  erb :"index"
end

get '/404' do
  erb :"404"
end

get '/background_image/:url' do
  if request.xhr?
    image_request(params[:url])
  end
end
