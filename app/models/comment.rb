class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :thought
  belongs_to :location
end
