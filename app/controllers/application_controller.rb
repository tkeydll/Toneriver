class ApplicationController < ActionController::Base
  protect_from_forgery

  private
  
  def session_user
    # ↓テキストの解説(p48)に従ってコードを削除します
    session[:user] = 1 #この行を削除
    unless session[:user]
      redirect_to :controller => :login and return false
    end
    @me = User.find(session[:user])
  end

  def session_cart
    session[:cart] = session[:cart] || Cart.new
  end

end