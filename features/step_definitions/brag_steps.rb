When("I click the brag button") do
  find("[data-testid='brag-link']").click
end

Then("I should be redirected to the brag document page") do
  expect(page).to have_current_path(brag_path)
end

Then("I should see the brag document title {string}") do |title|
  expect(page).to have_content(title)
end

Then("I should see content {string}") do |text|
  expect(page).to have_content(text)
end

When("I click the back button on the brag document page") do
  find("[data-testid='back-button']").click
end

Then("I should be redirected back to the quests page") do
  expect(page).to have_current_path(quests_path)
end
