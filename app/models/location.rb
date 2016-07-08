class Location < ActiveRecord::Base
  validates :name, uniqueness: :true, presence: :true
  has_many :thoughts, dependent: :destroy
  has_many :comments
  has_many :user_locations
  has_many :users, through: :user_locations
end
