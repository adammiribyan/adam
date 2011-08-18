class RequestsController < ApplicationController  
  def create
    @client_request = Request.new(params[:request])
    @client_request.save
    
    respond_to :js
  end
end
