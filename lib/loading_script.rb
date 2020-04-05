# frozen_string_literal: true

require 'capybara'
require 'capybara/dsl'
require 'selenium-webdriver'

Capybara.app_host = ENV['SITE_NAME'] || 'http://www.testrisk.com'
driver = (ENV['DRIVER']).to_sym unless ENV['DRIVER'].nil?
Capybara.default_selector = :css
Capybara.default_max_wait_time = 30
Capybara.ignore_hidden_elements = true
Capybara.save_path = File.dirname(__FILE__) + '/media'

Capybara.current_driver = driver || :driver_iphone6_vertical_visible

# * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
# * * * * * * * * * *  D R I V E R S  * * * * * * * * * * *
# * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
Capybara.register_driver :driver_chrome_visible do |app|
  args = %w[--disable-infobars --disable-notifications]
  options = Selenium::WebDriver::Chrome::Options.new(args: args)
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.register_driver :driver_chrome_fullscreen_headless do |app|
  args = %w[--start-fullscreen --disable-infobars --disable-notifications]
  options = Selenium::WebDriver::Chrome::Options.new(args: args)
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.register_driver :driver_iphone6_vertical_visible do |app|
  size = '375,667'
  user_agent = 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1'
  args = ["--window-size=#{size}", '--use-mobile-user-agent', '--disable-infobars', '--disable-notifications', "--user-agent=#{user_agent}"]
  options = Selenium::WebDriver::Chrome::Options.new(args: args)
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.register_driver :driver_iphone6_vertical_headless do |app|
  size = '375,667'
  user_agent = 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1'
  args = ["--window-size=#{size}", '--use-mobile-user-agent', '--disable-infobars', '--disable-notifications', "--user-agent=#{user_agent}", '--no-sandbox', '--headless']
  options = Selenium::WebDriver::Chrome::Options.new(args: args)
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.register_driver :driver_iphone6_horizontal_visible do |app|
  size = '667,375'
  user_agent = 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1'
  args = ["--window-size=#{size}", '--use-mobile-user-agent', '--disable-infobars', '--disable-notifications', "--user-agent=#{user_agent}"]
  options = Selenium::WebDriver::Chrome::Options.new(args: args)
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.register_driver :driver_iphone6_horizontal_headless do |app|
  size = '667,375'
  user_agent = 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1'
  args = ["--window-size=#{size}", '--use-mobile-user-agent', '--disable-infobars', '--disable-notifications', "--user-agent=#{user_agent}", '--no-sandbox', '--headless']
  options = Selenium::WebDriver::Chrome::Options.new(args: args)
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.register_driver :driver_iphone6plus_vertical_headless do |app|
  size = '414,738'
  user_agent = 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1'
  args = ["--window-size=#{size}", '--use-mobile-user-agent', '--disable-infobars', '--disable-notifications', "--user-agent=#{user_agent}", '--no-sandbox', '--headless']
  options = Selenium::WebDriver::Chrome::Options.new(args: args)
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.register_driver :driver_iphone6plus_horizontal_headless do |app|
  size = '667,375'
  user_agent = 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1'
  args = ["--window-size=#{size}", '--use-mobile-user-agent', '--disable-infobars', '--disable-notifications', "--user-agent=#{user_agent}", '--no-sandbox', '--headless']
  options = Selenium::WebDriver::Chrome::Options.new(args: args)
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.register_driver :driver_ipad_vertical_visible do |app|
  size = '768,1024'
  user_agent = 'Mozilla/5.0 (iPad; CPU OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1'
  args = ["--window-size=#{size}", '--use-mobile-user-agent', '--disable-infobars', '--disable-notifications', "--user-agent=#{user_agent}"]
  options = Selenium::WebDriver::Chrome::Options.new(args: args)
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.register_driver :driver_ipad_horizontal_visible do |app|
  size = '1024,768'
  user_agent = 'Mozilla/5.0 (iPad; CPU OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1'
  args = ["--window-size=#{size}", '--use-mobile-user-agent', '--disable-infobars', '--disable-notifications', "--user-agent=#{user_agent}"]
  options = Selenium::WebDriver::Chrome::Options.new(args: args)
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.register_driver :driver_ipad_vertical_headless do |app|
  size = '768,1024'
  user_agent = 'Mozilla/5.0 (iPad; CPU OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1'
  args = ['--no-sandbox', '--headless', "--window-size=#{size}", '--use-mobile-user-agent', '--disable-infobars', '--disable-notifications', "--user-agent=#{user_agent}", '--no-sandbox', '--headless']
  options = Selenium::WebDriver::Chrome::Options.new(args: args)
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.register_driver :driver_ipad_horizontal_headless do |app|
  size = '1024,768'
  user_agent = 'Mozilla/5.0 (iPad; CPU OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1'
  args = ['--no-sandbox', '--headless', "--window-size=#{size}", '--use-mobile-user-agent', '--disable-infobars', '--disable-notifications', "--user-agent=#{user_agent}", '--no-sandbox', '--headless']
  options = Selenium::WebDriver::Chrome::Options.new(args: args)
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.register_driver :driver_samsungs6_vertical_headless do |app|
  size = '360,640'
  user_agent = 'Mozilla/5.0 (Linux; Android 6.0.1; SM-G920V Build/MMB29K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.98 Mobile Safari/537.36'
  args = ['--no-sandbox', '--headless', "--window-size=#{size}", '--use-mobile-user-agent', '--disable-infobars', '--disable-notifications', "--user-agent=#{user_agent}", '--no-sandbox', '--headless']
  options = Selenium::WebDriver::Chrome::Options.new(args: args)
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.register_driver :driver_samsungs6_horizontal_headless do |app|
  size = '640,360'
  user_agent = 'Mozilla/5.0 (Linux; Android 6.0.1; SM-G920V Build/MMB29K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.98 Mobile Safari/537.36'
  args = ['--no-sandbox', '--headless', "--window-size=#{size}", '--use-mobile-user-agent', '--disable-infobars', '--disable-notifications', "--user-agent=#{user_agent}", '--no-sandbox', '--headless']
  options = Selenium::WebDriver::Chrome::Options.new(args: args)
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.register_driver :driver_samsungsTabA_horizontal_headless do |app|
  size = '1024,600'
  user_agent = 'Mozilla/5.0 (Linux; Android 5.0.2; SAMSUNG SM-T550 Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/3.3 Chrome/38.0.2125.102 Safari/537.36'
  args = ['--no-sandbox', '--headless', "--window-size=#{size}", '--use-mobile-user-agent', '--disable-infobars', '--disable-notifications', "--user-agent=#{user_agent}", '--no-sandbox', '--headless']
  options = Selenium::WebDriver::Chrome::Options.new(args: args)
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.register_driver :driver_samsungsTabA_vertical_headless do |app|
  size = '600,1024'
  user_agent = 'Mozilla/5.0 (Linux; Android 5.0.2; SAMSUNG SM-T550 Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/3.3 Chrome/38.0.2125.102 Safari/537.36'
  args = ['--no-sandbox', '--headless', "--window-size=#{size}", '--use-mobile-user-agent', '--disable-infobars', '--disable-notifications', "--user-agent=#{user_agent}", '--no-sandbox', '--headless']
  options = Selenium::WebDriver::Chrome::Options.new(args: args)
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.register_driver :driver_desktop_headless do |app|
  args = %w[--window-size=1280,1696 --disable-infobars --disable-notifications --no-sandbox --headless]
  options = Selenium::WebDriver::Chrome::Options.new(args: args)
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.register_driver :driver_samsungsTabA_vertical_headless do |app|
  size = '600,1024'
  user_agent = 'Mozilla/5.0 (Linux; Android 5.0.2; SAMSUNG SM-T550 Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/3.3 Chrome/38.0.2125.102 Safari/537.36'
  args = ['--no-sandbox', '--headless', "--window-size=#{size}", '--use-mobile-user-agent', '--disable-infobars', '--disable-notifications', "--user-agent=#{user_agent}", '--no-sandbox', '--headless']
  options = Selenium::WebDriver::Chrome::Options.new(args: args)
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

default_verbose = $VERBOSE
$VERBOSE = nil
include Capybara::DSL
$VERBOSE = default_verbose

