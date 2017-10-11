class Listing < ApplicationRecord
  validates :title, presence: true
  validates :street_address, presence: true
  validates :city, presence: true
  validates :country_code, presence: true
  validates :country, presence: {
    message: -> (listing, data) { "Invalid country code: #{listing.country_code}" }
  }

  geocoded_by :full_address
  after_validation :geocode

  def country
    return nil if country_code.blank?
    @country ||= ISO3166::Country.new(country_code.upcase)
  end

  def full_address
    return nil if country.nil?
    "#{street_address}, #{city}, #{country.name}"
  end
end
