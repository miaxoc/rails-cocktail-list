class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses, dependent: :destroy
  validates :name, uniqueness: true, presence: true


end
