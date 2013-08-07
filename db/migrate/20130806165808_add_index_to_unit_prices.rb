class AddIndexToUnitPrices < ActiveRecord::Migration
  def change
    add_index "unit_prices", "nav_date"
  end
end
