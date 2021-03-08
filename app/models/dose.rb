class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :recipe

  validates :content, presence: true
  validates :recipe, uniqueness: { scope: :ingredient }
end
