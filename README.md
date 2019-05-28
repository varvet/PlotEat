# PlotEat

PlotEat is an meal planing shopping list app, available at https://ploteat.herokuapp.com/ . 

## Architecture

This is a Rails applicaction that allows you to store recipes, create a menu with your recipes and create a shopping list from the recipes that are on the menu.

## Development

Instructions for how to set up, work with and deploy the project.


### Dependencies

This is a
*[Ruby](https://www.ruby-lang.org)*
project. `bin/setup` will guide you through installing the required language(s). If you prefer to do this manually, or
know that you already have the requirements installed `bin/setup` will allow you to skip the language setup and allow
you to proceed with installing your language(s) manually as you see fit.

* Ruby gems: [Gemfile](Gemfile)

### Services

- E.g. [Heroku](https://www.heroku.com): Used for hosting
- E.g. [Code Climate](https://codeclimate.com): Used for code quality
- E.g. [Travis CI](https://travis-ci.com): Used for running tests before deploys

### Setup

```sh
$ bin/setup
```

Seed test data:

```sh
$ bin/rails db:seed
```

### Running the project

```sh
$ bin/rails server
```

### Tests

Run all tests:

```sh
$ bin/rake
```
Run rspec:

```sh
$ bin/rspec
```

Run a single rspec file:

```sh
$ bin/rspec spec/.../spec.rb
```
Run acceptance tests:

```sh
$ bundle exec cucumber
```
Run a single acceptance test file file:

```sh
$ bundle exec cucumber features/.../feature.rb
```

### Deployment

This project is deployed using [Heroku]
It is set up to automatically deploy to staging when changes are made to master.

### Environments

- Staging: https://ploteat.herokuapp.com/
