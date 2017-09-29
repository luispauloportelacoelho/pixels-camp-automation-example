Feature: Example API automation tests

I, as QA
I want to automate apis test


@pixels_api_get
Scenario: Example GET verb
  Given I to do GET on clients endpoint
  Then the response will be all clients

@pixels_api_post
Scenario: Example POST verb
  Given I to do POST on clients endpoint
  Then the new client is created with success

@pixels_api_put
Scenario: Example PUT verb
  Given I to do PUT on clients endpoint
  Then the client is changed with success
