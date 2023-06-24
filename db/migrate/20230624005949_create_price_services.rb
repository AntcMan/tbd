class CreatePriceServices < ActiveRecord::Migration[7.0]
  def change
    create_table :price_services do |t|

      t.timestamps
    end
  end
end
