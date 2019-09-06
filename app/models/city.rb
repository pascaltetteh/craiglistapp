class City < ApplicationRecord
	has_many :posts
	has_many :users
	validates :name, :state, presence: true
	
end
