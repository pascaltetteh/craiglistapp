class Category < ApplicationRecord
	has_many :posts
	belongs_to :section
	validates :name, presence: true
end
