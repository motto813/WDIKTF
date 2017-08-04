require "addressable/uri"

def tmdb_base_url
  "https://api.themoviedb.org/3"
end

def tmdb_search_maker(media_type, query)
  uri = Adressable::URI.new
  "/search/#{media_type}?api_key=#{ENV["TMDB_API_KEY"]}&query=
end
