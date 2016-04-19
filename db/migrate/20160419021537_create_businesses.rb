class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :uuid
      t.string :name
      t.text :address
      t.text :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :phone
      t.text :website

      t.timestamps null: false
    end
  end
end
