post '/user_actors' do
  @tmdb_search = Tmdb::Search.new
  if request.xhr?
    # tmdb_search_query("movie", params[:search_query])
    @tmdb_search.resource("movie")
    @tmdb_search.query(params[:search_query])
    @movie_id = @tmdb_search.fetch[0]["id"]
    @movie = Tmdb::Movie.detail(@movie_id)
    p @cast = Tmdb::Movie.casts(@movie_id)
    erb :"actors/_results_index", layout: false
  else
    redirect '/'
  end
end
