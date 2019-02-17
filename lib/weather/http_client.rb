require 'open-uri'

module Weather::HttpClient
  def self.get(url)
    OpenURI.open_uri(url).read
  end
end
