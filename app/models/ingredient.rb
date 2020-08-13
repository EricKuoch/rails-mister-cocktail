class Ingredient < ApplicationRecord
  INGREDIENTS = ["lemon", "ice", "mint leaves", "strawberry", "vodka", "rhum"]
  has_many :doses
  validates :name, uniqueness: true
  validates :name, presence: true
end
