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
    # ↓ここにテキストの解説(p64)に従ってコードを追加します



  end

  def destroy
    # ↓ここにテキストの解説(p65)に従ってコードを追加します



  end

  def add
    # ↓ここにテキストの解説(p61)に従ってコードを追加します




  end

  def checkout_confirm
    # ↓みなさん自身で内容を考えて実装してみましょう

  end

  def checkout
    # ↓みなさん自身で内容を考えて実装してみましょう

  end

end
