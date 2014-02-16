class AdminController < ApplicationController
  
  ID       = 'opendata_contest'
  PASSWORD = 'aiit'  
  
  def login
    render 'login'
  end
  
  def logout
    session[:admin_user] = nil
    move_to_admin
  end
  
  def index
    render 'index'
  end
  
  def create
    @rdf_type_lists = KyotoHelper.get_rdf_types
    render 'create'
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  def remove
    
  end
  
  private
  
  def is_login
    return session[:admin_user].blank? false: true
  end

  def auth(id, password)
    if ID == id && PASSWORD == password
      return session[:admin_user] = true
    end
    return false
  end
end