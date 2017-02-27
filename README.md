# Capistrano Ubuntu Ruby Setup

When initially deploying you should not have to install prerequisites to use Ruby but let the automatic deployment take care of this. This gem let's you install Ruby from scratch using Rbenv under the hood.

## Installation

Add these gems to your application's Gemfile:

```ruby
gem 'capistrano', '~> 3.6'
gem 'capistrano-rbenv', '~> 2.0'
gem 'capistrano-ubuntu-ruby-setup'
```

And then execute:

    $ bundle

Setup your deploy.rb according to [capistrano-rbenv](https://github.com/capistrano/rbenv) and add the following `require`s to your `Capfile`:

```ruby
require 'capistrano/rbenv'
require 'capistrano/rbenv_install'
require 'sshkit/sudo'
require 'capistrano/ubuntu_ruby_setup'
```

Run `bundle exec cap <environment> deploy` and profit.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

