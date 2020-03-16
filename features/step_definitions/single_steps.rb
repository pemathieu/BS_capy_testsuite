When(/^I consult "([^"]*)"$/) do |text|
  click_link(text, :match => :first)
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end
