class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :street_address
      t.string :city
      t.string :country_code
      t.integer :bed_count
      t.integer :bedroom_count
      t.integer :bathroom_count
      t.text :description
      t.integer :night_fee_cents
      t.integer :cleaning_fee_cents

      t.timestamps
    end
  end
end
