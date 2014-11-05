#encoding: utf-8
class CartController < ApplicationController
  layout 'default'
  before_filter :session_cart
  before_filter :session_user

  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @items }
    end
  end

  def update
    q = params[:quantity]

    q.each do |k, v|
      # v = {" " => quantity} となるので
      # バグといって良いくらいのめちゃくちゃな実装
      # なんでこーなるの？
      session[:cart].update(k, v[" "])
    end

    respond_to do |format|
      format.html { redirect_to cart_index_path }
    end
  end

  def destroy
    session[:cart].remove(params[:id])

    respond_to do |format|
      format.html { redirect_to cart_index_path }
    end
  end

  def add
    session[:cart].add(params[:id], params[:quantity])

    respond_to do |format|
      format.html { redirect_to cart_index_path }
    end

  end

  def checkout_confirm
    # ↓みなさん自身で内容を考えて実装してみましょう

  end

  def checkout
    # ↓みなさん自身で内容を考えて実装してみましょう

  end

end
