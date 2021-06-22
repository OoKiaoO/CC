class Food < ApplicationRecord
  belongs_to :food_entry

  validates :calories, presence: true, numericality: true
  validates :food_name, presence: true, uniqueness: true
  validates :quantity, presence: true, numericality: true
  validates :serving_unit, presence: true
end
