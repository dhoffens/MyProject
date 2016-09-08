class TimeEntry < ApplicationRecord
	belongs_to :project

	validates :hours, presence: true, 
				numericality: { 
					only_integer: true, 
					greater_than_or_equal_to: 0 }
	validates :minutes, presence: true, 
  				numericality: {
  					only_integer: true,
  					greater_than_or_equal_to: 0 }
	validates :date, presence: true
end
