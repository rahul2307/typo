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
    When I fill in "category_name" with "Thriller"
    And I fill in "category_keywords" with "keyword1"
    And I fill in "category_permalink" with "permalink1"
    And I fill in "category_description" with "Description"
    Then I press "Save"
    Then I should see "Thriller" 
    Then I should see "keyword1" 
    Then I should see "permalink1" 
    Then I should see "Description" 

 
  Scenario: Successfully edit categories 
    Given I am on categories page 
    When I fill in "category_name" with "Thriller"
    And I fill in "category_keywords" with "keyword1"
    And I fill in "category_permalink" with "permalink1"
    And I fill in "category_description" with "Description" 
    And I press "Save" 
    And I follow "Thriller" 
    When I fill in "category_name" with "Thriller_changed" 
    And I fill in "category_keywords" with "keyword1_changed" 
    And I fill in "category_permalink" with "permalink1_changed" 
    And I fill in "category_description" with "Description_changed" 
    And I press "Save" 
    Then I should see "Thriller_changed"  
    Then I should see "keyword1_changed" 
    Then I should see "permalink1_changed" 
    Then I should see "Description_changed"