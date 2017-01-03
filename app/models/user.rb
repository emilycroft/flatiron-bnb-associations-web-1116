class User < ActiveRecord::Base
  has_many :listings, :foreign_key => 'host_id'
  has_many :reservations, :foreign_key => 'guest_id'
  has_many :trips, class_name: 'Reservation', foreign_key: 'guest_id'
  has_many :reviews, :foreign_key => 'guest_id'
  has_many :reservations, through: :listings




  # def trips
  #   # Reservation.create(guest_id: self.id)
  #   # binding.pry
  #
  #   self.reservations.collect do |trip|
  #     trip
  #   end
  # end
end
