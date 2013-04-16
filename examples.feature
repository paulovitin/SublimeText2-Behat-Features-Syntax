Feature: SublimeText2 Behat Features Syntax
  In order to use this plugin
  As a SublimeText2 and Behat user
  I need to see what the syntax highlight looks like

  @outline @placeholders
  Scenario Outline: Eating
    Given there are <start> cucumbers
    When I eat <eat> cucumbers
    Then I should have <left> cucumbers

    Examples:
      | start | eat | left |
      |  12   |  5  |  7   |
      |  20   |  5  |  15  |

  Scenario:
    Given a blog post named "Random" with:
      """
      Some Title, Eh?
      ===============
      Here is the first paragraph of my blog post.
      Lorem ipsum dolor sit amet, consectetur adipiscing
      elit.
      """

  # This is a comment line
  # This is another comment line

  Background:
    Given a global administrator named "Greg"
    And a blog named "Greg's anti-tax rants"
    And a customer named "Wilson"
    And a blog named "Expensive Therapy" owned by "Wilson"

  Scenario: Wilson posts to his own blog
    Given I am logged in as Wilson
    When I try to post to "Expensive Therapy"
    Then I should see "Your article was published."
  





