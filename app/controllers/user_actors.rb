post '/user_actors' do
  if request.xhr?
    puts "new search"
    tmdb_search_maker(params[:search_query])
  else
    redirect '/'
  end
end
