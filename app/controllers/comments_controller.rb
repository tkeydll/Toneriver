#encoding: utf-8
class CommentsController < ApplicationController
  before_filter :session_user

  # POST /comments
  # POST /comments.json
  def create
    item = Item.find(params[:id])
    comment = Comment.new(params[:comment])

    comment.user = @me
    item.comments << comment

    respond_to do |format|
      if item.save
        format.html { redirect_to top_path(item), notice: "#{@me.name}さんのレビューコメントが投稿されました" }
        format.json { render json: comment, staus: created, location: comment }
      else
        format.html { redirect_to top_path(item) }
        format.json { render json: comment.errors, status: unprocessable_entity }
      end
    end

  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    # ↓item),ここにテキストの解説(p58)に従ってコードを追加します





  end
end
