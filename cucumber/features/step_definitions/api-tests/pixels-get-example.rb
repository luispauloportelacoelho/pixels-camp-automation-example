Given(/^I to do GET on clients endpoint$/) do
  $pixels_api.get_example
end

Then(/^the response will be all clients$/) do
  expect($get_clients.code).to eq 200
end
