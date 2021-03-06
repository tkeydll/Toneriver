class TopController < ApplicationController
  layout 'default'
  before_filter :session_user

  # GET /top
  # GET /top.json
  def index

    @items = Item.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @items }
    end
  end

  # GET /top/1
  # GET /top/1.json
  def show

    @item = Item.find(params[:id])
    @comment = Comment.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @item }
    end
  end

  def like

    item = Item.find(params[:id])

    item.likes << Like.new(user: @me)
    item.save

    
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
