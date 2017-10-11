class Listing < ApplicationRecord
  def country
    ISO3166::Country.new(country_code.upcase)
  end

  def full_address
    "#{street_address}, #{city}, #{country.name}"
  end
end
