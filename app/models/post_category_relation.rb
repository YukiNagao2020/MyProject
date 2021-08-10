class PostCategoryRelation < ApplicationRecord
  belongs_to :post
  belongs_to :category
  # attachment :image
end
