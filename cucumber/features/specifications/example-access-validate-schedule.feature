Feature: Validations example pixels camp home page

I, as a geek
I would like to access the schedule page
For see my favourites talks

@favourite_talk
Scenario: Find my favourite talk
  Given I access the schedule Page
  Then I see my favourite talk with successs
