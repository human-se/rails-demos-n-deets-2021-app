require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest

  test 'should get about' do
    get about_url
  end

end
