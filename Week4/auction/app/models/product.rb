class Product < ApplicationRecord

	belongs_to :user

	validates :title, presence: true

	validates :description, presence: true

	validates :deadline, presence: true

end

