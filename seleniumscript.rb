require 'selenium-webdriver'

browser = Selenium::WebDriver.for :firefox

browser.get "http://amazon.co.uk"

element = browser.find_element id: "twotabsearchtextbox"

element.send_keys "Eloquent Ruby"
element.submit

a = browser.find_element class: "a-color-price"
puts a.text