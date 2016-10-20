# Inflecto::Refinements

`String` and `Numeric` refinements based on [inflecto](https://rubygems.org/gems/inflecto) gem.

[![Gem Version](https://badge.fury.io/rb/inflecto-refinements.png)][gem]
[![Build Status](https://secure.travis-ci.org/alsemyonov/inflecto-refinements.png?branch=master)][travis]
[![Dependency Status](https://gemnasium.com/alsemyonov/inflecto-refinements.png)][gemnasium]
[![Code Climate](https://codeclimate.com/github/alsemyonov/inflecto-refinements.png)][codeclimate]
[![Coverage Status](https://coveralls.io/repos/alsemyonov/inflecto-refinements/badge.png?branch=master)][coveralls]

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'inflecto-refinements'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install inflecto-refinements

## Usage

If you want to use familiar `String#camelcase`, `String#underscore`, etc.,
but do not want to pollute your project with the whole ActiveSupport family,
use `inflecto-refinements`:

``` ruby
require 'inflecto-refinements'

using Inflecto::Refinements

'data_mapper'.camelize            #=> 'DataMapper'
'data.mapper'.classify            #=> 'DataMapper'
'DataMapper'.constantize          #=> DataMapper
'data_mapper_rspec'.dasherize     #=> 'data-mapper-rspec'
'DataMapper::Inflecto'.demodulize #=> 'Inflecto'
'Message'.foreign_key             #=> 'message_id'
'employee_salary'.humanize        #=> 'Employee salary'
'sample'.pluralize                #=> 'samples'
'forums'.singularize              #=> 'forum'
'news'.singularize                #=> 'news'
'fancy_category'.tableize         #=> 'fancy_categories'
'DataMapper'.underscore           #=> 'data_mapper'
1.ordinalize                      #=> '1st'
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/alsemyonov/inflecto-refinements. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

© [Alex Semyonov](https://al.semyonov.us/) <[alex@semyonov.us](mailto:alex@semyonov.us?subject=inflecto-refinements)>, 2016

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

[gem]: https://rubygems.org/gems/inflecto-refinements
[travis]: https://travis-ci.org/alsemyonov/inflecto-refinements
[gemnasium]: https://gemnasium.com/alsemyonov/inflecto-refinements
[codeclimate]: https://codeclimate.com/github/alsemyonov/inflecto-refinements
[coveralls]: https://coveralls.io/r/alsemyonov/inflecto-refinements
