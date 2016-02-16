Feature: Click on a video on page

  Scenario: User clicks on a video placed in iframe
    Given I am on player page
    When I click on video
    Then I should see pause button
    When I click pause button
    Then I should see start button
    When I click on full screen
    Then I exit full screen