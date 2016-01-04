class Category < ActiveRecord::Base
  validates :name, presence: true
  validates :name, length: {maximum: 255}
  validates :description, length: {maximum: 1024}
end
