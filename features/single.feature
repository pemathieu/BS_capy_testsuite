# Google Feature
Feature: Google Search Functionality

Background:
  Given I am on https://www.google.com/ncr

Scenario: Can find search results
  When I fill in "q" found by "name" with "BrowserStack"
  And I submit
  Then I should see title "BrowserStack - Google Search"
  
# Google Feature
Feature: securange Search Functionality

Background:
  Given I am on https://www.google.com/ncr

Scenario: Can find search results
  When I fill in "q" found by "name" with "securange"
  And I submit
  And I clickresult "www.securange.fr"
  Then I should see title "Sécurange : bien choisir et bien utiliser les meilleurs sièges auto"
  