Feature: Merge articles
	As a blog administrator
	In order to merge articles on the same topic
	I want to merge two articles into one article

	Background:
		Given the blog is set up
		And the following articles exist:
  	| id | title          | body 										   | author |
  	| 1	 | First Article  | This is the first article  | meffel	|
  	| 2	 | Second Article | This is the second article | wipi		|
  	And I am logged into the admin panel

	Scenario: Successfully merge articles
		Given I am on the edit page for "First Article"
		When I fill in "article_merge_id" with "2"
		And I press "Merge"
		Then I should be on the first article page
		And I should see "This is the first article"
		And I should see "This is the second article"
		And I should see "wipi"