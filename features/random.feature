Feature: Generate and fill in with random text

  Scenario: User enters random text
    Given I am on required page
    When I fill movie title with random text
    And I fill review with random paragraph
    And I fill Director with random name
    And I fill Writer with random name
    And I fill Producer with random name
    #And I fill website with random link
    And I fill youtube with random link
    And I choose genre
    And I select radio button "Terrible"
    And I press validate button
    Then page should not include "is required"

