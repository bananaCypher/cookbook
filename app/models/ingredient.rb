class Ingredient < ActiveRecord::Base
  has_and_belongs_to_many :recipes

  # Scopes
  scope :all_name_id_array, -> {all.map{ |ing| [ing.name, ing.id] }}
end