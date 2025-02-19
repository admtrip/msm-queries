class Character < ApplicationRecord
  belongs_to :actor
  belongs_to :movie
  
  validates :name, :actor, :movie, presence: true
end
