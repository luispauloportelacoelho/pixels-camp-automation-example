Given(/^I to do PUT on clients endpoint$/) do
  $pixels_api.put_example
end

Then(/^the client is changed with success$/) do
  $pixels_api.put_confirm_data_change
end
