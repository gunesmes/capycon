require "capy_con/version"

module CapyCon
  # Your code goes here...
  load "loading_script.rb"

  hello = 
  """\n\n
  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
  *                                                         *
  *                capycon - CAPYBARA CONSOLE               *
  *                                                         *
  *  Default driver is CHROME `:driver_chrome`              *
  *  You can set the driver by one of the following options *
  *                                                         *
  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
  \n"""

  puts hello

  Capybara.drivers.each do |key, value| 
	  puts "   Capybara.current_driver = :#{key.to_s}"
  end
end
