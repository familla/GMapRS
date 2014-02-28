class MapPlace < ActiveRecord::Base
  validates :place, presence: true, uniqueness: true
  validates :latitude, presence: true, uniqueness: true
  validates :longitude, presence: true, uniqueness: true
end
