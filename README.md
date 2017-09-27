# Automation with cucumber and capybara framework

The objective is show the automation in ruby language with cucumber and capybara framework.

The ecosystem consists in Cucumber, Capybara, RSPEC Expectations for assertions and Page Objects Pattern.

## Getting Started
### Cloning the repository

```git
git clone https://github.com/thiagomarquessp/pixels-camp-automation-example.git
```
### Installing

- Ruby 2.2.0 or higher should be installed;
- Bundler gem should be installed:

```ruby
gem install bundler
```
Execute the bundle command in root path where Gemfile is:

```shell
bundle install
```

- Chrome and Firefox drivers should be installed so that selenium can start in a browser (configured in env.rb file):

```shell
#First install the Nodejs package:
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install jq nodejs curl -qy

#After install the chrome and Firefox drivers
npm install -g geckodriver
npm install -g chromedriver
```
### Test execution

In the path ../cucumber execute:

```ruby
cucumber --tags @tag_name
```
