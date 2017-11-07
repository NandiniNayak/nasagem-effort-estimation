require 'test_helper'

class AccountControllerTest < ActionDispatch::IntegrationTest
  test "should get page" do
    get account_page_url
    assert_response :success
  end

end
