class PlayController < ApplicationController
  before_action :set_current_rally_id, only: [:index]
  
  def index
  end
  
  private
    def set_current_rally_id
      
    end
end
