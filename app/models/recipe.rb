class Recipe < ApplicationRecord
	has_many :ingredients
	has_many :directions
	
	accepts_nested_attributes_for :ingredients
	
	accepts_nested_attributes_for :directions
	
	validates :title, :description, :image, presence: true
	mount_uploader :image, ImageUploader
end
