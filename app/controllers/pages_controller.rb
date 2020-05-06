class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def contact
  end

  def archive
    @posts = Post.published.order(date_published: :desc)
    @categories = Category.all


  end
end
