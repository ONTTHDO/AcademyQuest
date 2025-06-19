Feature: Checklist Quests
    Background:
        Given I am on the home page
        Then I should see my profile image
        And I should see my name "Natthida Rungrueang"
        And I should see my profile title "Software Developer"
        And I should see the brag button
        And I should see the add button

    Scenario: Add a quest
        When I fill in "quest_title" with "Deploy to Render"
        And I click the add button
        Then I should see a quest titled "Deploy to Render"
        And I should see the quest list

    Scenario: Mark a quest as done
        When I should see the quest list
        And I should see the done button
        And I should see the delete button
        And I click the done button for "Deploy to Render"
        Then I should see the quest marked as done

    Scenario: Delete a quest
        When I should see the quest list
        And I should see the done button
        And I should see the delete button
        And I click the delete button for "Deploy to Render"
        Then I should not see the quest titled "Deploy to Render"
