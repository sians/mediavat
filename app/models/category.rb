class Category < ApplicationRecord
  has_many :posts_categorys
  has_many :posts, through: :posts_categorys

end
