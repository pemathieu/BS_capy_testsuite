Feature: beemix's discover Search and watch details Functionalities

Background:
  Given I am on https://beemix-web.labs.rd.alphanetworks.tv/


Scenario: Can discover
  When I discover
  Then I should see homepage


Scenario: Can not find search results
  When I fill in "Search" found by "placeholder" with "flashdadada"
  Then I should see no result


Scenario: Can find search results
  When I fill in "Search" found by "placeholder" with "flash"
  Then I should see flash results 