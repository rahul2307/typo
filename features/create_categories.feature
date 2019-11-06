Feature: Add and edit categories
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add and edit categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully add and edit categories
    Given I am on categories page
    When I fill in "category_name" with "Thriller"
    And I fill in "category_keywords" with "keyword1"
    And I fill in "category_permalink" with "permalink1"
    And I fill in "category_description" with "Description"
    Then I press "Save"
    Then I should see "Category was successfully saved"
    
  Scenario: Successfully create categories 
    Given I am on categories page 
    When I fill in "category_name" with "Foobar"
    And I fill in "category_keywords" with "Lorem Ipsum"
    And I fill in "category_permalink" with "permalinking"
    And I fill in "category_description" with "descripting"
    Then I press "Save"
    Then I should see "Foobar" 
    Then I should see "Lorem Ipsum" 
    Then I should see "permalinking" 
    Then I should see "descripting" 

 
  Scenario: Successfully edit categories 
    Given I am on categories page 
    When I fill in "category_name" with "Foobar" 
    And I fill in "category_keywords" with "Lorem Ipsum" 
    And I fill in "category_permalink" with "permalinking" 
    And I fill in "category_description" with "descripting" 
    And I press "Save" 
    And I follow "Foobar" 
    When I fill in "category_name" with "Foobar_changed" 
    And I fill in "category_keywords" with "Lorem Ipsum_changed" 
    And I fill in "category_permalink" with "permalinking_changed" 
    And I fill in "category_description" with "descripting_changed" 
    And I press "Save" 
    Then I should see "Foobar_changed"  
    Then I should see "Lorem Ipsum_changed" 
    Then I should see "permalinking_changed" 
    Then I should see "descripting_changed"