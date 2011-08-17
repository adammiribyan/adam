require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  context "on GET to /bree" do
    setup do
      get :show, :id => 'bree'
    end

    should respond_with(:success)
    should render_template('bree')
  end

  should "raise a routing error for an invalid page" do
    assert_raise ActionController::RoutingError do
      get :show, :id => "invalid"
    end
  end

  should "raise a routing error for a page in another directory" do
    assert_raise ActionController::RoutingError do
      get :show, :id => "../other/wrong"
    end
  end
end
