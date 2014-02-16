class ApiController < ApplicationController
  
  def fetch
    params.delete(:controller)
    params.delete(:action)
    @items = KyotoHelper.fetch(params)
    p "--------------------------------------------------"
    p params
    p "--------------------------------------------------"
    render :json => @items
  end
  
end