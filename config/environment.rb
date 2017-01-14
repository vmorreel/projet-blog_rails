# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

Date::DATE_FORMATS[:default] = "%m-%d-%Y"
Time::DATE_FORMATS[:default] = "%m-%d-%Y %H:%M"
