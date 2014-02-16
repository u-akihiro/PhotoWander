class LoginController < ApplicationController
 
  # GET /login 
  # ログイン認証画面
  def login_form
    render 'login'
  end
  
  # POST /login
  # ログン認証(データ送られた時)
  def login_auth
    mail = params[:mail]
    password = params[:password]
    logger.debug params
    @error = 'ログイン認証に失敗しました。'
    @user = User.where(:mail => mail).where(:password => password).first
    if !@user.nil?
      #ログインに成功したら成功画面に移動する。
      session[:user_id] = @user.id
      move_to_top
    else
      #ログイン認証に失敗したら、ログインフォーム画面に移動する。
      render 'login'
    end
  end

  # GET /logout
  # ログアウト
  def logout
    session[:user_id] = nil
    move_to_top
  end
  
end