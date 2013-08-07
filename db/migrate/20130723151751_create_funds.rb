class CreateFunds < ActiveRecord::Migration
  def change
    create_table :funds do |t|
      t.string :name, null: false
      t.string :abbr, null: false
      t.references :management_firm

      t.timestamps
    end

    add_index :funds, :management_firm_id
  end
end
