Feature: Input data and then confirm

  Scenario: User inputs data and then confirms
    Given I am on developer page
    When I fill input field with "10"
    Then input field should have value "10"


  Scenario: User selects from dropdown
    Given I am on developer select page
    When I select "Value 3" value from dropdown
    Then Dropdown should have "Value 3" selected

  Scenario: User choose from radio button
    Given I am on "https://www.utexas.edu/learn/forms/radio.html" page
    When I select radio button "miss"
    Then Radio button "miss" should be selected


