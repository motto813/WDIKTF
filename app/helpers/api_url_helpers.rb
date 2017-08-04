require "addressable/uri"

def tmdb_base_url
  "https://api.themoviedb.org/3"
end

def tmdb_search_maker(media_type, query)
  uri = Adressable::URI.new
  uri.query_values = {
    api_key: ENV["TMDB_API_KEY"],
    query: query
  }
  "#{tmdb_base_url}/search/#{media_type}?#{uri.query}"
end
