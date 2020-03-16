Feature: securange testing

Background:
  Given I am on https://www.securange.fr/

Scenario: Can consult bien choisir
  When I first come and consult "BIEN CHOISIR"
  Then I should see "Quel siège auto choisir ?"