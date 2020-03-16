When(/^I discover$/) do
  click_button("Discover")
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end