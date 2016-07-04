class Thought < ActiveRecord::Base
  belongs_to :location
  validates :location, presence: true
  validates :title, presence: true
  belongs_to :user
end
