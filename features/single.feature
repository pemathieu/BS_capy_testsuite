Feature: beemix's discover Search and watch details Functionalities

Background:
  Given I am on https://beemix-web.labs.rd.alphanetworks.tv/


Scenario: Can discover
  When I discover
  Then I should see homepage
  