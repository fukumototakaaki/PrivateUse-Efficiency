require 'test_helper'

class FacilitysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get facilitys_index_url
    assert_response :success
  end

end
