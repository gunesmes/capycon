# CapyCon

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/capycon`. To experiment with that code, run `bin/console` for an interactive prompt.



## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capycon'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capycon

## Usage

run capybara on the console

```shell script
~/P/p/c/capy_con (master ⚡→☡) pry
[1] pry(main)> require "capycon"


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

   Capybara.current_driver = :driver_chrome_visible
   Capybara.current_driver = :driver_chrome_fullscreen_headless
   Capybara.current_driver = :driver_iphone6_vertical_visible
   Capybara.current_driver = :driver_iphone6_vertical_headless
   Capybara.current_driver = :driver_iphone6_horizontal_visible
   Capybara.current_driver = :driver_iphone6_horizontal_headless
   Capybara.current_driver = :driver_iphone6plus_vertical_headless
   Capybara.current_driver = :driver_iphone6plus_horizontal_headless
   Capybara.current_driver = :driver_ipad_vertical_visible
   Capybara.current_driver = :driver_ipad_horizontal_visible
   Capybara.current_driver = :driver_ipad_vertical_headless
   Capybara.current_driver = :driver_ipad_horizontal_headless
   Capybara.current_driver = :driver_samsungs6_vertical_headless
   Capybara.current_driver = :driver_samsungs6_horizontal_headless
   Capybara.current_driver = :driver_samsungsTabA_horizontal_headless
   Capybara.current_driver = :driver_samsungsTabA_vertical_headless
   Capybara.current_driver = :driver_desktop_headless
=> true
[2] pry(main)> Capybara.current_driver = :driver_chrome_visible
=> :driver_chrome_visible
[3] pry(main)> visit "/"
=> nil
[4] pry(main)> find(".js-site-search-form > label > input").send_keys "capycon"
=> #<Capybara::Node::Element tag="input" path="/HTML/BODY[1]/DIV[1]/HEADER[1]/DIV[1]/DIV[2]/DIV[2]/DIV[1]/DIV[1]/DIV[1]/FORM[1]/LABEL[1]/INPUT[1]">
[5] pry(main)> find(".js-site-search-form > label > input").send_keys :return
=> Obsolete #<Capybara::Node::Element>
[6] pry(main)> page.has_content? "gunesmes/capycon"
=> true
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/capycon. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CapyCon project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/capycon/blob/master/CODE_OF_CONDUCT.md).
