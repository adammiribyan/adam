require 'test_helper'

class RequestsControllerTest < ActionController::TestCase
  context "on POST to /requests" do
    setup do
      @client_request = FactoryGirl.create(:request)
    end
    
    should "create request" do
      assert_difference('Request.count') do
        post :create, decedent: @client_request.attributes
      end
    end
  end
  
  context "on GET to /requests" do
    setup do
      @request.env['HTTP_AUTHORIZATION'] = encode_credentials('admin', 'breeandwine')
      get :index
    end
    
    should "assign requests" do
      assert_not_nil assigns(:requests)
    end
    
    should respond_with(:success)    
    should render_template('index')
  end
  
  private

    def encode_credentials(username, password)
      "Basic #{ActiveSupport::Base64.encode64("#{username}:#{password}")}"
    end
end
