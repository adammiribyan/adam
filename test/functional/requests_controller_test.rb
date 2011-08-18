require 'test_helper'

class RequestsControllerTest < ActionController::TestCase
  setup do
    @client_request = FactoryGirl.create(:request)
  end
  
  should "created request" do
    assert_difference('Request.count') do
      post :create, decedent: @client_request.attributes
    end
  end
end
