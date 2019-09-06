class Section < ApplicationRecord
	has_many :categories
	validates :name, presence: true
end
