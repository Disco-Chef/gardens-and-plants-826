class Plant < ApplicationRecord
  belongs_to :garden

  has_many :plant_tags # @plant.plant_tags => "Array" of  PlantTag instances
  has_many :tags, through: :plant_tags  # @plant.tags => "Array" of Tag instances

  validates :name, :image_url, presence: true
end
