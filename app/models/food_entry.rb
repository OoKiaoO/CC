class FoodEntry < ApplicationRecord
  belongs_to :record

  validates :quantity, presence: true, numericality: true
  validates :food_name, presence: true
  validates :serving_unit, presence: true, numericality: true
end
