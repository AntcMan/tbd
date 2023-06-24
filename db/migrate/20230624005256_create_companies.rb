class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :ticker, null: false
      t.json :prices

      t.timestamps
    end
    add_index :companies, :ticker, unique: true
  end
end
