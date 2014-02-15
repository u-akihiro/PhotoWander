class PlayController < ApplicationController
  before_action :set_rally_id, only: [:index]
  
  def index
    @checkpoints = User.find(current_user.id).entry_cards.find_by(rally_id: params[:rally_id]).rally.checkpoints
    @stamp = Stamp.new
  end
  
  private
    def set_rally_id
      session['rally_id'] = params[:rally_id]
    end
end
