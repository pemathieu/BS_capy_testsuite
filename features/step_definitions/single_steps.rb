When(/^I consult "([^"]*)"$/) do |text|
  click_link('text')
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end
