class Recipe < ActiveRecord::Base
  belongs_to :category
  has_and_belongs_to_many :ingredients

  # Validators
  validates :name, presence: true
  validates :name, length: {maximum: 255}
  validates :description, length: {maximum: 12000}
  validates :instructions, length: {maximum: 12000}
  validates :category, presence: true
end