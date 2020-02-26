# Gitclean

Gitclean is a command line tool to keep clean your git repositories deleting unused branches.

The aim of this project is aboard all the repetitive tasks that we have to do with git to keep the repository free of, for example, unused branches and tags.

> By now, it is only deleting the branches but it will make more in future versions :).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gitclean'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gitclean

## Usage

After installing the gem it can be can used with the `gitclean` command

`gitclean [options]`

### Options

#### `--exemption`, default: `master,staging,develope`

Example: `gitclean --exemption=branch-name`

Defines the branches which do not must be deleted. It is a list of strings separated by comma

#### `-h, --help`

Prints the options list and how to use them

#### `--help`

Prints the cli version

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/gitclean.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
