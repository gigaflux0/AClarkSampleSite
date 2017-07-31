require 'test_helper'

class VehiclesControllerTest < ActionDispatch::IntegrationTest
  test "should get browser" do
    get vehicles_browser_url
    assert_response :success
  end

  test "should get profile" do
    get vehicles_profile_url
    assert_response :success
  end

end
