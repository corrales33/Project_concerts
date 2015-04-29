class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :band_name
      t.string :venue
      t.string :city
      t.date :date
      t.float :price
      t.text :description

      t.timestamps null: false
    end
  end
end
