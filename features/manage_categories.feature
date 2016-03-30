Feature: Create category
  As an admin
  In order to categorize my blogs
  I want create and manage blog categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Create category
    Given I am a user
    When I am on the homepage
    Then I should be able to click "Categories"
    And I should be able add a new category

  Scenario: Successfully visit categories page
    Given there are no categories
    When I follow "Categories"
    When I fill in "Name" with "dogs"
    Then I should be able to click "Categories"
    And I should have 1 category
    And I should see "dogs"

  Scenario: Create a Category
    When I follow "Categories"
    And I fill in "Name" with "dogs"
    And I fill in "Keywords" with "dogs"
    And I fill in "Permalink" with "www.test.com"
    And I fill in "Description" with "fun"
    And I press "Save"
    Then I should see "Category was successfully saved."
    And I should see "dogs"

  Scenario:  Edit a Category
    When I go to the edit page for "dogs"
    And I fill in "Description" with "playful"
    And I press "Save"
    Then I should see "Category was successfully saved."
    And I should see "dogs"

  Scenario:  Cancel editing
    When I got to the edit page for "dogs"
    And I press "Cancel"
    Then I should go to "Categories"
