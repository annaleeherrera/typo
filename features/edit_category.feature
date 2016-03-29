Feature: Create Catogory
  As a blog administrator
  In order to categorize my blogs
  I want to create a category

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Create category
    Given I am a user
    When I am on the homepage
    Then I should be able to click "Categories"
    And I should be able add a new category
    Then I should see that the category I created exists
