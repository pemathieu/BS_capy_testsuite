When(/^I discover$/) do
  find('style_actionButton__2jhWW style_root__2qEAj style_loginGhost__138R_').click
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end
