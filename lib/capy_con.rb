require 'capy_con/version'
require 'loading_script'

module CapyCon
  hello =
    ''"\n
    * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
    *                                                         *
    *                capycon - CAPYBARA CONSOLE               *
    *                                                         *
    *  Default driver is CHROME `:driver_chrome_visible`      *
    *  You can set the driver by one of the following options *
    *                                                         *
    * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
    \n"''

  CapybaraConsole.run

  puts hello
  Capybara.drivers.each do |key, value|
    if key.to_s.include?('driver')
      puts "   Capybara.current_driver = :#{key.to_s}"
    end
  end
end
