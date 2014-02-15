class EntryCardsController < ApplicationController
  before_action :set_entry_card, only: [:show, :edit, :update, :destroy]
  
  def entry_list
    @user = User.find(current_user.id)
    @entry_cards = @user.entry_cards
  end
  
  # GET /entry_cards
  # GET /entry_cards.json
  def index
    @entry_cards = EntryCard.all
  end

  # GET /entry_cards/1
  # GET /entry_cards/1.json
  def show
  end

  # GET /entry_cards/new
  def new
    @entry_card = EntryCard.new
  end

  # GET /entry_cards/1/edit
  def edit
  end

  # POST /entry_cards
  # POST /entry_cards.json
  def create
    @entry_card = EntryCard.new(entry_card_params)

    respond_to do |format|
      if @entry_card.save
        format.html { redirect_to @entry_card, notice: 'Entry card was successfully created.' }
        format.json { render action: 'show', status: :created, location: @entry_card }
      else
        format.html { render action: 'new' }
        format.json { render json: @entry_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entry_cards/1
  # PATCH/PUT /entry_cards/1.json
  def update
    respond_to do |format|
      if @entry_card.update(entry_card_params)
        format.html { redirect_to @entry_card, notice: 'Entry card was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @entry_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entry_cards/1
  # DELETE /entry_cards/1.json
  def destroy
    @entry_card.destroy
    respond_to do |format|
      format.html { redirect_to entry_cards_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry_card
      @entry_card = EntryCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_card_params
      params.require(:entry_card).permit(:finish_flag, :user_id, :rally_id)
    end
end
