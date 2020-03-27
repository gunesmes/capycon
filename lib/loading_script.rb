require 'capybara/dsl';
include Capybara::DSL;

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :chrome
Capybara.javascript_driver = :chrome

visit 'http://www.amazon.com';

irb; # leave the console idle