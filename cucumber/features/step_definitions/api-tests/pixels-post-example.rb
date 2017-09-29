Given(/^I to do POST on clients endpoint$/) do
  $pixels_api.post_example
end

Then(/^the new client is created with success$/) do
  expect($post_clients.code).to eq 201
end
