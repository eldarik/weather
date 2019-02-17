require 'open-uri'

module Weather::HttpClient
  def self.get(url)
    OpenURI.open_uri(url).read
  rescue OpenURI::HTTPError => error
    {}
  end
end
