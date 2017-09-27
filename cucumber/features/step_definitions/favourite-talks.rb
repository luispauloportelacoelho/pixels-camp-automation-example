Given(/^I access the schedule Page$/) do
  $talk.find_talk
end

Then(/^I see my favourite talk with successs$/) do
  $talk.confirm_talk
end
