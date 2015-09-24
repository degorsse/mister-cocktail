class Dose < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :cocktail

  validates :description, presence: true
  validates :cocktail, presence: true, uniqueness: {scope: :ingredient}
  validates :ingredient, presence: true
end
