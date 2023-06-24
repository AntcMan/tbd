class CreateStocks < ActiveRecord::Migration[7.0]
  def change
    create_table :stocks do |t|
      t.string :symbol
      t.float :open
      t.float :high
      t.float :low
      t.float :close
      t.integer :volume

      t.timestamps
    end
  end
end
