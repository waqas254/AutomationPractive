Feature: On mdn site check the checkbox

  Scenario: User checks checkbox on mdn we site
    Given I am on mdn page
    When I click on first checkbox
    Then First checkbox should be checked
    When I click on second checkbox
    Then Second checkbox should be checked
    When I uncheck on first checkbox
    Then First checkbox should be unchecked
    When I uncheck on second checkbox
    Then Second checkbox should be unchecked
