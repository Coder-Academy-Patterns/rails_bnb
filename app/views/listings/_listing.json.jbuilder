json.extract! listing, :id, :title, :street_address, :city, :country_code, :bed_count, :bedroom_count, :bathroom_count, :description, :night_fee_cents, :cleaning_fee_cents, :created_at, :updated_at
json.url listing_url(listing, format: :json)
