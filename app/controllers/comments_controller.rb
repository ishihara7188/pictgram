class CommentsController < ApplicationController
  def index

  end

  def new

  end

  def create
    @comment = Comment.new
    @comment.user = current_user

    if @comment.save
      redirect_to topics_path, success: 'コメントを投稿しました'
    else
      redirect_to topics_path, danger: 'コメントの投稿に失敗しました'
    end
  end
end
