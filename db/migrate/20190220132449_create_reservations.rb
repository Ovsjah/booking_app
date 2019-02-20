class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :period
      t.references :client, foreign_key: true
      t.references :table, foreign_key: true
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
