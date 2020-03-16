When /^I discover$/ do
  click_button("Discover")
end

Then /^I should see homepage do
  expect(page).to have_content("TV channels (Square)")
end
