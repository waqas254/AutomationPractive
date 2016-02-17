Feature: Generate and fill in with random text

  Scenario: User enters random text
    Given I am on required page
    When I fill movie title with random text
    And I fill review with random paragraph
    And I fill in "director" with random name
    And I remember entered text in "director"
    And confirm if "director" has remembered name text
    And I fill in "writer" with random name
    And I remember entered text in "writer"
    And confirm if "writer" has remembered name text
    And I fill in "producer" with random name
    And I remember entered text in "producer"
    And confirm if "producer" has remembered name text
    And I fill website with random link
    And I remember entered text in "website"
    And confirm if "website" has remembered name text
    And I fill youtube with random link
    And I remember entered text in "trailer"
    And confirm if "trailer" has remembered name text
    And I choose genre
    And I select radio button "Terrible"
    And I press validate button
    Then page should not include "is required"

