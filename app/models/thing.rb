class Thing < ActiveRecord::Base
  include Geokit::Geocoders
  validates_uniqueness_of :city_id, :allow_nil => true
  validates_presence_of :lat, :lng
  has_and_belongs_to_many :users
  has_many :reminders
  has_many :statuses
  attr_accessor :owned_by_you
  @owned_by_you
  def self.find_closest(lat, lng, limit=200)
    query = <<-SQL
      SELECT *, (3959 * ACOS(COS(RADIANS(?)) * COS(RADIANS(lat)) * COS(radians(lng) - RADIANS(?)) + SIN(RADIANS(?)) * SIN(RADIANS(lat)))) AS distance
      FROM things
      ORDER BY distance
      LIMIT ?
      SQL
    find_by_sql([query, lat.to_f, lng.to_f, lat.to_f, 200])
  end

  def reverse_geocode
    @reverse_geocode ||= MultiGeocoder.reverse_geocode([lat, lng])
  end

  def street_number
    reverse_geocode.street_number
  end

  def street_name
    reverse_geocode.street_name
  end

  def street_address
    reverse_geocode.street_address
  end

  def city
    reverse_geocode.city
  end

  def state
    reverse_geocode.state
  end

  def zip
    reverse_geocode.zip
  end

  def country_code
    reverse_geocode.country_code
  end

  def country
    reverse_geocode.country
  end

  def full_address
    reverse_geocode.full_address
  end

  def adopted_by(user_id)
    for u in users do
      if u.id == user_id then
        return true
      end
    end
    return false
  end
  
  def adopted?
    users.length != 0
  end
end
