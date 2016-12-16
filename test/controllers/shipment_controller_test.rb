require 'test_helper'

class ShipmentControllerTest < ActionDispatch::IntegrationTest
  test "should get track_shipments" do
    get shipment_track_shipments_url
    assert_response :success
  end

end
