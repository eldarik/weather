require 'open-uri'

module Geo::HttpClient
  def self.get(url)
    OpenURI.open_uri(url).read
  end
end
