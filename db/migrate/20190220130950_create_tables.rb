class CreateTables < ActiveRecord::Migration[5.2]
  def change
    create_table :tables do |t|
      t.boolean :reserved, default: false
      t.integer :reservation_period
      t.datetime :reserved_at
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
