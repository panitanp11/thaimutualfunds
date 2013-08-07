class CreateManagementFirms < ActiveRecord::Migration
  def change
    create_table :management_firms do |t|
      t.string :name, null: false
      t.string :abbr, null: false

      t.timestamps
    end

    add_index :management_firms, :abbr
  end
end
