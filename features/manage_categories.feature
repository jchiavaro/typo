Feature: Manage categories
	As a blog administrator
	In order to manage the categories
	I want to be able to add or edit categories

Background:
Given the blog is set up

Scenario: An admin user can add a new category
	Given I am logged into the author panel
	When I follow "Categories"
	Then I should see "Categories"
