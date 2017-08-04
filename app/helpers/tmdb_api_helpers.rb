require "addressable/uri"

def tmdb_base_url
  "https://api.themoviedb.org/3"
end

def tmdb_search_query(media_type, query)
  uri = Addressable::URI.new
  uri.query_values = {
    api_key: ENV["TMDB_API_KEY"],
    query: query
  }
  "#{tmdb_base_url}/search/#{media_type}?#{uri.query}"
end

def image_request(image_url)
  # config = Tmdb::Configuration.new
  # config.base_url
  "http://cf2.imgobject.com/t/p/w500#{image_url}"
end
