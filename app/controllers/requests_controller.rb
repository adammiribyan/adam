class RequestsController < ApplicationController
  http_basic_authenticate_with :name => "admin", :password => "breeandwine", :except => :create
  
  def index
    @requests = Request.all
  end
  
  def create
    @client_request = Request.new(params[:request])
    @client_request.save
    
    respond_to :js
  end
end
