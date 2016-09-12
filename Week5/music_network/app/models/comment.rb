class Comment < ApplicationRecord
  belongs_to :concert

  validates :name, presence: true
  validates :comment, presence: true
end
