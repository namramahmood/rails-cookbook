class Bookmark < ApplicationRecord
  belongs_to :category
  belongs_to :recipe

  validates :comment, length: { minimum: 6 }
  validates :recipe_id, uniqueness: { scope: :category_id }
end 
