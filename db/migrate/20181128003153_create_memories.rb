class CreateMemories < ActiveRecord::Migration[5.2]
  def change
    create_table :memories do |t|
      t.string :name
      t.text :description
      t.string :location
      t.datetime :start_date
      t.datetime :end_date
      t.references :memorable, polymorphic: true

      t.timestamps
    end
  end
end
