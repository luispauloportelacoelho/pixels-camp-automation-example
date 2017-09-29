require 'httparty'

class PixelsCampApi
  include HTTParty

  def initialize
    @base_uri = "http://localhost:3000"
  end

  def get_example
    $get_clients = HTTParty.get @base_uri + "/clients"
    puts $get_clients.body
  end

  def post_example
    $post_clients = HTTParty.post  @base_uri + "/clients",
      :body => $post_body,
      :headers => {
          "Content-Type" => 'application/json'
      }
    puts $post_clients.body
  end
end
