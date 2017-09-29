require 'httparty'
require 'rspec/expectations'

class PixelsCampApi
  include HTTParty
  include RSpec::Matchers

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

  def put_example
    $put = HTTParty.put @base_uri + "/clients/1",
      :body => $put_body,
      :headers => {
        "Content-Type" => 'application/json'
      }
  end

  def put_confirm_data_change
    expect($put.code).to eq 200
    expect($put["name"]).to eq $change_name
    expect($put["document_id"]).to eq $change_document
    expect($put["address"]).to eq $change_address
    expect($put["user"]).to eq $change_user
    expect($put["password"]).to eq $change_password
  end
end
