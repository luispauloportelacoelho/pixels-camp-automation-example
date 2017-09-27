Given(/^I access the schedule Page$/) do
  visit '/'
  find(:xpath, '//a[@href="/schedule"]').click
end

Then(/^I see my favourite talk with successs$/) do
  sleep 01
end
