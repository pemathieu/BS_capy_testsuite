When /^I fill in "([^\"]*)" found by "([^\"]*)" with "([^\"]*)"$/ do |value, _type, keys|
  fill_in(value, with: keys)
end

When /^I submit$/ do
  find_field('q').native.send_key(:enter)
end

Then /^I should see title "([^\"]*)"$/ do |title|
  expect(page).to have_title title
end

Then /^I should see no result
  expect(page).to have_content("No results")
end

Then /^I should see flash results
  expect(page).to have_content("10 results found in total")
end

When /^I discover$/ do
  click_button('Discover')
end

Then /^I should see homepage
  expect(page).to have_content("TV channels (Square)")
end