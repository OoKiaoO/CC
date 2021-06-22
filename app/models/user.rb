class User < ApplicationRecord
  has_many :records

  validates :nickname, presence: true, uniqueness: true
  validates :gender, presence: true, inclusion: { in: %w(male female) }
  validates :height, presence: true, numericality: true, inclusion: { in: (50..250) }
  validates :weight, presence: true, numericality: true
  validates :age, presence: true, numericality: { only_integer: true }, inclusion: { in: (10..100) }
  # validates :weight_goal, presence: true, numericality: true
end
