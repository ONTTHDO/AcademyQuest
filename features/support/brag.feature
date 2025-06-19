Feature: Brag Document Navigation

    Scenario: View Brag Document and back to quests page
        Given I am on the home page
        When I click the brag button
        Then I should be redirected to the brag document page
        And I should see the brag document title "My Brag Document 2025"
        And I should see content "กล้าพูดมากขึ้น พยายามสื่อสารให้คนเข้าใจง่ายขึ้น"
        And I should see content "เขียนโปรเจค React ได้โดยไม่ต้องเปิดเอกสาร"
        And I should see content "เลื่อนระดับใน Codewars เป็น kata 6"
        And I should see content "พยายามฝึกทำ TDD ให้เป็นนิสัย"
        When I click the back button on the brag document page
        Then I should be redirected back to the quests page
