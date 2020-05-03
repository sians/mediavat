class Admin::PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :get_post, only: %i[edit update destroy]

  def index
    @posts = policy_scope(Post).order(updated_at: :asc)
  end

  def new
    @post = Post.new
    authorize @post
  end

  def create
    permitted_params = post_params
    permitted_params[:published] = permitted_params[:published].to_i
    @post = Post.new(permitted_params)
    authorize @post

    if @post.save
      redirect_to admin_posts_path
    else
      render 'admin/posts/new'
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to admin_posts_path
    else
      render 'admin/posts/edit'
    end
  end

  private

  def get_post
    @post = Post.find(params[:id])
    authorize @post
  end

  def post_params
    params.require(:post).permit(
      :title,
      :subtitle,
      :content,
      :post_content,
      :author,
      :published,
      :date_published,
      { :categorys => [] }
      )
  end
end
