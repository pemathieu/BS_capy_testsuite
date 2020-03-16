# Google Feature
Feature: Google securange Search Functionality beemix login fail

Background:
  Given I am on https://www.google.com/ncr

Scenario: Can find search results
  When I fill in "q" found by "name" with "BrowserStack"
  And I submit
  Then I should see title "BrowserStack - Google Search"


Scenario: Can find and use search results
  Given I am on https://www.google.com/ncr
  When I fill in "q" found by "name" with "securange"
  And I submit
  And I clickresult "www.securange.fr"
  Then I should see title "Sécurange : bien choisir et bien utiliser les meilleurs sièges auto"
  
Scenario: Can try login and fail
  Given I am on https://beemix-web.labs.rd.alphanetworks.tv/
  When I fill in "Your email address" found by "placeholder" with "truc@truc.com"
  And I fill in "Your password" found by "placeholder" with "pass"
  And I login
  Then I should see answer "Invalid credentials"
