require 'test_helper'

class InfomationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get infomations_index_url
    assert_response :success
  end

end
