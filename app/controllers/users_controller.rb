class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  # GET /users/1
  def show
  end

  # GET /account/entry/
  def new
    @user = User.new
  end

  # POST /account/save/
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      move_to_top
    else
      respond_to do |f|
        f.html {render action: 'new'}
      end
    end
  end

  # GET /account/edit/
  def edit
    if current_user
      @user = User.find(current_user.id)    
    else
      move_to_top
    end
  end
  
  # PATCH/PUT /account/save/
  def update
    if current_user
      @user = User.find(current_user.id)
      respond_to do |format|
        if @user.update(user_params)
          format.html { redirect_to @user, notice: '変更しました。' }
        else
          format.html { render action: 'edit' }
        end
      end
    else
      move_to_top
    end
  end

  # 退会を確認する。
  # GET /account/secede/
  def secede_confirm
    if current_user
      render 'secede'
    else
      move_to_top  
    end
  end
  
  # 退会をする(アカウントを削除する)
  # POST /account/secede/
  def secede
    if current_user
      user = User.find(current_user.id)
      user.destroy
      session[:user_id] = nil      
      move_to_top
    end  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
       
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :mail, :password)
    end
    
end
