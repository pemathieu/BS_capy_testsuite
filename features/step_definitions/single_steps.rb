
# Google Steps
When(/^I fill in "([^\"]*)" found by "([^\"]*)" with "([^\"]*)"$/)do |value, type, keys|
  fill_in(value, :with => keys)
end

When(/^I submit$/) do
  find_field('q').native.send_key(:enter)
end
 
Then( /^I should see title "([^\"]*)"$/) do |title|
  expect(page).to have_title title
end

When(/^I clickresult "([^\"]*)"$/) do |search|
  click_link(search, :match => :first)
end

When(/^I login$/) do
 # find(:xpath, './/div[contains(., "Login")]').click()
 # click_on(class: 'style_actionButton__2jhWW style_root__2qEAj style_loginNormal__3vKW2')
  find_field('Your password').native.send_key(:enter)
end

Then( /^I should see answer "([^\"]*)"$/) do |answer|
  expect(page).to have_content answer
end
