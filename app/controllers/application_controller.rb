class ApplicationController < ActionController::Base
  protect_from_forgery

  private
  
  def session_user
    unless session[:user]
      redirect_to :controller => :login and return false
    end
    @me = User.find(session[:user])
  end

  def session_cart
    session[:cart] = session[:cart] || Cart.new
  end

end