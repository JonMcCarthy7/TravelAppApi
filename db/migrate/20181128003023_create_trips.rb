class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.references :user
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.string :country
      t.text :description

      t.timestamps
    end
  end
end
