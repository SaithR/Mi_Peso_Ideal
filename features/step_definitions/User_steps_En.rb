Given(/^I am on the home page$/) do
  visit '/'
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |campo, entrada|
  fill_in(campo, :with => entrada)
end

When(/^I click "(.*?)"$/) do |button| 
  click_button(button)
end

Then(/^I should see "(.*?)"$/) do |regexp|
  regexp = Regexp.new(regexp)
  page.should have_content(regexp)
end
