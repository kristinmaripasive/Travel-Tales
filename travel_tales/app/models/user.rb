class User < ActiveRecord::Base
  has_many :locations
  has_many :thoughts
end
