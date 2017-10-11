class AddHostToListings < ActiveRecord::Migration[5.1]
  def change
    add_reference :listings, :host, foreign_key: { to_table: :users }
  end
end
