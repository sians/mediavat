class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    comment_attrs = comment_params.merge(
      email: current_user.email,
      user_id: current_user.id,
      name: current_user.username,
      post_id: params[:post_id])
    @comment = Comment.new(comment_attrs)
    authorize @comment
    @comment.save

    @post = Post.find(params[:post_id])

    respond_to do |format|
      format.js
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:email, :name, :text, :post_id)
  end
end
