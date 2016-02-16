@wiki
Feature: Search on wiki

  Scenario Outline: User searches for cucumber on wiki
    Given I am on "<wiki_language>" wiki page
    And And I search for "<text>" then I see "<latin>" then a click image and i should see "<image_text>" and i close then i should see "<latin>"
   # When I search for "<text>"
   # And search field has text "<text>"
   # And I press search button
   # Then I should see "<result>"
   # When I click image
   # Then I should see "<image_text>"
   # When I click close button
   # Then I should see "<result>"

  	Examples:
    | text      | latin           |           image_text                                                      | wiki_language |
      | cucumber  | Cucumis sativus | Cucumber fruit developing on plants possessing multiple lateral branching | EN             |
      | bear      | Ursidae         |                 Brown bear, Ursus arctos                                  | EN             |

  @print_something
  Scenario Outline: User searches for cucumber on wiki for DE
    Given I am on "<wiki_language>" wiki page
    When I search for "<text>"
    And search field has text "<text>"
    And I press search button
    Then I should see "<result>"
    When I click image
    Then I should see "<image_text>"
    When I click close button
    Then I should see "<result>"

    Examples:
      | text      | result           |           image_text      | wiki_language |
      | Gurke  | Cucumis sativus | Gurke (Cucumis sativus) | DE                  |
    #  | Bären      | Ursidae         |  Braunbär (Ursus arctos)    | DE |