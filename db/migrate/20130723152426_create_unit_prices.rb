class CreateUnitPrices < ActiveRecord::Migration
  def change
    create_table :unit_prices do |t|
      t.references  :fund
      t.decimal     :price, precision: 12, scale: 6
      t.date        :nav_date
    end

    add_index :unit_prices, [:fund_id, :nav_date], unique: true
  end
end
