class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address1
      t.float :latitude
      t.float :longitude
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
