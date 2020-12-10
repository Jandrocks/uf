require 'test_helper'

class UfsControllerTest < ActionDispatch::IntegrationTest
  test "should get by_date" do
    get ufs_by_date_url
    assert_response :success
  end

end
