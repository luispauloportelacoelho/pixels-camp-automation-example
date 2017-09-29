Before '@favourite_talk' do
  $talk = PixelsCamp.new
  $talk_name = '//a[@href="https://github.com/PixelsCamp/talks/blob/master/2017/changing-mindset-with-lean-and-test-automation_thiago-marques-pereira.md"]'
end

Before '@pixels_api_get, @pixels_api_post ' do
  $pixels_api = PixelsCampApi.new
  $post_body = {
    "name": Faker::Name.name,
    "document_id": Faker::CPF.numeric,
    "address": Faker::StarWars.planet,
    "user": Faker::Pokemon.name,
    "password": Faker::Base.numerify('inicial####')
  }.to_json
end
