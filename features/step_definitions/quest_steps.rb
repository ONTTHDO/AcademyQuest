Given("I am on the home page") do
  visit root_path
end

When("I fill in {string} with {string}") do |field, value|
  fill_in field, with: value
end

When("I click the add button") do
  find("[data-testid='add-button']").click
end

Then("I should see a quest titled {string}") do |title|
  expect(page).to have_selector("[data-testid^='quest-title-']", text: title)
end

Given("a quest titled {string} exists") do |title|
  create(:quest, title: title)
end

When("I visit the home page") do
  visit root_path
end

When("I click the done button for {string}") do |title|
  quest = Quest.find_by(title: title)
  selector = "[data-testid='quest-done-#{quest.id}']"
  expect(page).to have_selector(selector)
  find(selector).check
end

Then("I should see the quest marked as done") do
  expect(page).to have_selector(".quest")
end

When("I click the delete button for {string}") do |title|
  quest = Quest.find_by(title: title)
  selector = "[data-testid='quest-delete-#{quest.id}']"
  expect(page).to have_selector(selector)
  find(selector).click
end

Then("I should not see the quest titled {string}") do |title|
  expect(page).not_to have_selector("[data-testid^='quest-title-']", text: title)
end

Then("I should see my profile image") do
  expect(page).to have_selector("img[data-testid='profile-picture']")
end

Then("I should see my name {string}") do |name|
  expect(page).to have_selector("[data-testid='profile-name']", text: name)
end

Then("I should see my profile title {string}") do |title|
  expect(page).to have_selector("[data-testid='profile-title']", text: title)
end

Then("I should see the add button") do
  expect(page).to have_selector("[data-testid='add-button']")
end

Then("I should see the quest list") do
  expect(page).to have_selector("[data-testid='quest-list']")
end

Then("I should see the done button") do
  expect(page).to have_selector("[data-testid^='quest-done-']")
end

Then("I should see the delete button") do
  expect(page).to have_selector("[data-testid^='quest-delete-']")
end

Then("I should see the brag button") do
  expect(page).to have_selector("[data-testid='brag-link']")
end
