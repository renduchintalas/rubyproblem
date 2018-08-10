Feature: Problem1 validation
  The problem1 home page provides users list of values and sum of values.

  Scenario Outline: Verify total count of values present on screen
    Given I open the Problem1 home page
    When I count all values
    Then I should see count of values and lables matches

 Scenario Outline: Verify values are greater than zero

    Given I open the Problem1 home page
    When I count all values
    Then I should see values are greater than zero

 Scenario Outline: Verify values are formatted in correct currencies

    Given I open the Problem1 home page
    When I count all values
    Then I should see values are formated in correct currencies
  
  Scenario Outline: Verify total balance mathces sum of values

    Given I open the Problem1 home page
    When I count all values
    Then I should see total balance mathces sum of values  