class Project < ApplicationRecord
	has_many :time_entries

	validates :name, 
		presence: true,
		uniqueness: true,
		length: { maximum: 30 },
		format: { with: /\A[a-zA-Z\s]+\Z/}

	def self.clean_old
		where("created_at > ?", 7.days.ago).destroy_all
	end
end