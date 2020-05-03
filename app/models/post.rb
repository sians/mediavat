class Post < ApplicationRecord
  has_many :posts_categorys
  has_many :comments
  has_many :categorys, through: :posts_categorys

  has_rich_text :post_content

  enum published: {"unpublished": 0, "published": 1, "archived": 2}
end
