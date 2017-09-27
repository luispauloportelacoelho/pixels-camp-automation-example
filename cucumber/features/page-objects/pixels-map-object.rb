class PixelsCampPage < SitePrism::Page
  element :schedule_page, :xpath, '//a[@href="/schedule"]'
  element :day_two, :xpath, '//a[@href="/schedule/#day2"]'
end
