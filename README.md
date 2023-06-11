# FirstCommit

A gem to retrieve the first commit of any public Github project.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add first_commit

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install first_commit

## Usage

1. Run `first-commit init TOKEN`, where `TOKEN` is a valid Github personal access token. To register a new personal access token, see [here](https://github.com/settings/tokens/new)
2. Run `first-commit PROJECT_NAME`, which returns the url for the first commit of the project.

For example, `first-commit rails/rails` returns the url of the first commit to Rails.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ybirader/first_commit.

## License

FirstCommit is released under the MIT License.
