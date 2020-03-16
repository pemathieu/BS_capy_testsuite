When(/^I first come and consult "([^"]*)"$/) do |text|
  find_button(" J'accepte ").click
  click_link(text, :match => :first)
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end
