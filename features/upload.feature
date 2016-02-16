Feature: Upload a file from system

  Scenario: User wants to upload multiple file
    Given I am on "http://nervgh.github.io/pages/angular-file-upload/examples/simple/" page
    When I upload a file "/home/waqaslatif/Pictures/Screenshot from 2015-10-19 12:34:34.png"
    Then I should see filename "Screenshot from 2015-10-19 12:34:34.png" on page
    When I upload a file "/home/waqaslatif/Pictures/Screenshot from 2015-10-19 15:15:04.png"
    Then I should see filename "Screenshot from 2015-10-19 15:15:04.png" on page
    When I click on Upload button
    Then I see full progress bar


  Scenario: User wants to upload a file from another link
    Given I am on "https://angular-file-upload.appspot.com/" page
    When I fill in username with "test"
    And I upload file "/home/waqaslatif/Pictures/Screenshot from 2015-10-19 12:34:34.png"
    And I click on submit
    Then I see "Upload successful"