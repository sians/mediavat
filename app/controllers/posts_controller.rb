class PostsController < ApplicationController
  before_action :get_post, only: %i[show]
  skip_before_action :authenticate_user!

  def index
    @posts = policy_scope(Post).order(created_at: :desc)
  end

  def show

  end

  private

  def get_post
    @post = Post.find(params[:id])
    authorize @post
  end

  def post_params
    params.require(:post).permit(:title, :subtitle, :content, :author, :date_published, :published)
  end

end
