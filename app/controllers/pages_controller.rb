class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def contact
  end

  def archive
    @posts = Post.all
    @categories = Category.all


  end
end
