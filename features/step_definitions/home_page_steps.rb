Given /^I open the Problem1 home page$/ do
  @page = LoginPage.new
  @home_page= @page.load
  @home_page.verify_page
end

#step to check count of values and lables matches screen

Then /^I should see count of values and lables matches/ do
  @home_page.count_values

#step to check if count of values greater than zero

Then /^I should see values are greater than zero/ do
  @home_page.values_greater_than_zero

#step to check if values are formated in currencies

Then /^I should see values are formated in correct currencies/ do
  @home_page.currency_format

#step to check total balance matches sum of values

Then /^I should see total balance mathces sum of values/ do
  @home_page.sum_values_matches_the_page