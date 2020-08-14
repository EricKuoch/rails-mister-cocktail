class Dose < ApplicationRecord
  has_one_attached :photo
  belongs_to :ingredient
  belongs_to :cocktail
  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: [:ingredient] }
end
