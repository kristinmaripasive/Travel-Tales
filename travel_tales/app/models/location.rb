class Location < ActiveRecord::Base
  has_many :thoughts, dependent: :destroy
  validates :name, uniqueness: :true, presence: :true
  belongs_to :user
  has_many :comments
end
