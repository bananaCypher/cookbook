class Category < ActiveRecord::Base
  has_many :recipes

  # Validators
  validates :name, presence: true
  validates :name, length: {maximum: 255}
  validates :description, length: {maximum: 1024}
end
