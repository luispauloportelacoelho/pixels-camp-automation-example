Before '@favourite_talk' do
  $talk = PixelsCamp.new
  $talk_name = '//a[@href="https://github.com/PixelsCamp/talks/blob/master/2017/changing-mindset-with-lean-and-test-automation_thiago-marques-pereira.md"]'
end

Before '@pixels_api_get, @pixels_api_post, @pixels_api_put' do
  $pixels_api = PixelsCampApi.new
  #POST
  $post_body = {
    "name": Faker::Name.name,
    "document_id": Faker::CPF.numeric,
    "address": Faker::StarWars.planet,
    "user": Faker::Pokemon.name,
    "password": Faker::Base.numerify('inicial####')
  }.to_json
  #PUT
  $pixels_api = PixelsCampApi.new
  $change_name = Faker::Name.name
  $change_document = Faker::CPF.numeric
  $change_address = Faker::StarWars.planet
  $change_user = Faker::Pokemon.name
  $change_password = Faker::Base.numerify('inicial####')
  $put_body = {
    "name": $change_name,
    "document_id": $change_document,
    "address": $change_address,
    "user": $change_user,
    "password": $change_password
  }.to_json
end
