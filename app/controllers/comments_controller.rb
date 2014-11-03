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
    comment = Comment.find(params[:comment_id])
    comment.destroy

    respond_to do |format|
      format.html { redirect_to top_path(params[:id]), notice: "#{params[:comment_id]} のレビューコメントを削除しました" }
      format.json { head :no_content }
    end

  end
end
