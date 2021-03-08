class Ingredient < ApplicationRecord
  has_many :doses, :dependent => :restrict_with_error #, dependent: :destroy, 
  has_many :recipes, through: :doses
  
  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
end
