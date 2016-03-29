class CommentsController < ApplicationController
  def index
    if params[:user_id]
      render json: User.find(params[:user_id]).comments
    elsif params[:contact_id]
      render json: Contact.find(params[:contact_id]).comments
    else
      Comment.errors.full_messages.add("stop doing that")
    end
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render json: @comment
    else
      render(
        json: @comment.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def comment_params
    params.require(:comment).permit(:author_id, :text, :commentable_id, :commentable_type)
  end
end
