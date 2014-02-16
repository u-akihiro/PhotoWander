class PlayController < ApplicationController
  before_action :set_rally_id, only: [:index]
  
  def index
    @user = User.find(current_user.id)
    @user_card = @user.entry_cards.find(:first)
    @stamp = Stamp.new
  end
  
  private
    def set_rally_id
      session['rally_id'] = params[:rally_id]
    end
end
