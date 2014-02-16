class GoStampRallyController < ApplicationController
  def index
    render 'index'
  end

  def rally_lists
    @json = GoStampRallyHelper.test_fetch
    render :json => @json
  end

  def detail
  end
end
