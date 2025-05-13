class Bookmark < ApplicationRecord
  belongs_to :recipe
  belongs_to :category

  # Validations
  validates :recipe, presence: true
  validates :category, presence: true
  validates :comment, length: { minimum: 6, message: "must be at least 6 characters long" }
  validates_uniqueness_of :recipe, scope: :category, message: "This recipe is already bookmarked in this category"
end
