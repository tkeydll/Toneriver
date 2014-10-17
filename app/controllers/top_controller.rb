class TopController < ApplicationController
  layout 'default'
  before_filter :session_user

  # GET /top
  # GET /top.json
  def index
    # ↓ここにテキストの解説(p20)に従ってコード(itemモデルオブジェクトをallで全件取得)を追加します


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @items }
    end
  end

  # GET /top/1
  # GET /top/1.json
  def show
    # ↓ここにテキストの解説(p33)に従ってコード(itemモデルオブジェクトをfindで取得等)を追加します



    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @item }
    end
  end

  def like
    # ↓ここにテキストの解説(p38)に従ってコード(itemモデルオブジェクトをfindで取得)を追加します
    

    # ↓ここにテキストの解説(p39)に従ってコード(良いねを増やして保存)を追加します


    
    respond_to do |format|
      format.html { redirect_to top_path(item) }
      format.json { head :no_content }
    end
  end

  def like_cancel
    item = Item.find(params[:id])
    Like.find_by_user_id_and_item_id(@me.id,params[:id]).delete

    respond_to do |format|
      format.html { redirect_to top_path(item) }
      format.json { head :no_content }
    end
  end

  def history
    # ↓みなさん自身で内容を考えて実装してみましょう

  end

end
