require 'rspec/expectations'

class PixelsCamp
  include Capybara::DSL
  include RSpec::Matchers

  def initialize
    @talks = PixelsCampPage.new
  end

  def find_talk
    visit '/'
    @talks.schedule_page.click
    @talks.day_two.click
  end

  def confirm_talk
    expect(page).to have_xpath $talk_name
  end
end
