Given "I am on the home page" do
  visit root_path
end

When /^I fill in "(.+)" with "(.+)"$/ do |field, value|
  fill_in field, with: value
end

When /^I press "(.+)"$/ do |button|
  click_button button
end

Then "I should be signed in" do
  page.current_url.should == user_path(@user)
end
