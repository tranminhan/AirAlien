class Room < ActiveRecord::Base
  belongs_to :user
  has_many :photos
  has_many :reservations

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validates :home_type, presence: true
  validates :room_type, presence: true
  validates :accommodate, presence: true
  validates :bath_room, presence: true
  validates :bed_room, presence: true
  validates :listing_name, presence: true
  validates :summary, presence: true
  validates :address, presence: true

end
