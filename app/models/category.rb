class Category < ActiveRecord::Base
  has_many :recipes

  # Validators
  validates :name, presence: true
  validates :name, length: {maximum: 255}
  validates :description, length: {maximum: 12000}

  # Scopes
  scope :all_name_id_array, -> {all.map{ |cat| [cat.name, cat.id] }}
end
