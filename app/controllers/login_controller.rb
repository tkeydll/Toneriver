class LoginController < ApplicationController


  def index
    @user = User.new
  end

  def auth
    reset_session
    @user = User.new(params[:user])

    # 認証
    # なにをやっているのか、さっぱりわからん。
    @auth = User.find_by_login_and_password(params[:user][:login], params[:user][:password])

    respond_to do |format|
      unless @auth
        flash[:notice] = "ログイン名またはパスワードが違います。"
        # index.html を表示
        format.html { render :action => "index" }
      else
        session[:user] = @auth.id
        # top にリダイレクト
        format.html { redirect_to(top_index_path) }
      end
    end

  end




end
