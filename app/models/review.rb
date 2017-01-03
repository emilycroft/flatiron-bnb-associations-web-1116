class Review < ActiveRecord::Base
  belongs_to :reservation
  belongs_to :user
  belongs_to :guest, :class_name => "User"
end
