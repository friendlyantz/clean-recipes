class Recipe < ApplicationRecord
  has_many :doses, :dependent => :restrict_with_error#, dependent: :destroy
  has_many :ingredients, through: :doses
  
  validates :name, presence: true, uniqueness: true#, length: { minimum: 3 }
  validates :content, presence: true, uniqueness: true#, length: { minimum: 3 }
end
