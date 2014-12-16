require 'rubygems'
require 'watir-webdriver'
require 'rspec'
require 'rspec/expectations'

browser = Watir::Browser.new
browser.goto 'http://bit.ly/watir-example'

browser.wait (1000)

#Setting a text field
browser.text_field(:name => 'entry.1000000').set 'Watir'

#Setting a multi-line text box
browser.text_field(:name => 'entry.1000001').set "I come here from Australia. \n The weather is great here."

#Setting and clearing a radio button
browser.radio(:value => 'Watir').set
#browser.radio(:value => 'Watir').clear

#Setting and clearing check boxes
browser.checkbox(:value => 'Ruby').set
browser.checkbox(:value => 'Python').set
browser.checkbox(:value => 'Python').clear

#Clearing, getting and selecting selection list values
#browser.select_list(:name => 'entry.1000004').clear
puts browser.select_list(:name => 'entry.1000004').options
browser.select_list(:name => 'entry.1000004').select 'Chrome'

#Clicking a button
browser.button(:name => 'submit').click

#Checking for text in a page
puts browser.text.include? 'Your response has been recorded.'
if browser.text.include? 'Your response has been recorded.'
  p "Response has been recorded"
end

#Checking the title of a page
puts browser.title == 'Thanks!'

if browser.title == 'Thanks!'
  p "Thank you brother!"
end

#browser.link(:class => 'ss-bottom-link').click
my_var = browser.link(:class => 'ss-bottom-link').text

p my_var
