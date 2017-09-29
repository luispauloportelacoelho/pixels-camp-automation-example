Feature: Example API automation tests

I, as QA
I want to automate apis test

@pixels_api_get
Scenario: Example get verb
  Given I to do GET on clients endpoint
  Then the response will be all clients

@pixels_api_post
Scenario: Example post verb
  Given I to do POST on clients endpoint
  Then the new client is created with success
