# frozen_string_literal: true

require 'capycon/version'

module Capycon
  hello =
    ''"\n
    * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
    *                                                                           *
    *                capycon - CAPYBARA CONSOLE                                 *
    *                                                                           *
    *  Default driver is :driver_iphone6_vertical_visible                       *
    *  To set the site name as environment variable:                            *
    *    echo 'export SITE_NAME=http://www.github.com' >> ~/.bash_profile       *
    *                                                                           *
    *  To set the driver  as environment variable:                              *
    *    echo 'export DRIVER=driver_chrome_visible' >> ~/.bash_profile          *
    *                   OR                                                      *
    *  You can set the driver by one of the following options                   *
    *                                                                           *
    * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
    \n"''

  load 'loading_script.rb'

  puts hello
  Capybara.drivers.each do |key, value|
    if key.to_s.include?('driver')
      puts "   Capybara.current_driver = :#{key.to_s}"
    end
  end

  visit '/'
end
