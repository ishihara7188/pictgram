class CommentsController < ApplicationController
  def index

  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new

    if @comment.save
      redirect_to topics_path, success: 'コメントを投稿しました'
    else
      redirect_to topics_path, danger: 'コメントの投稿に失敗しました'
    end
  end

  def comment_params
    params.require(:comment).permit(:text)
  end
end
