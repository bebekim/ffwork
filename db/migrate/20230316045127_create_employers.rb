class CreateEmployers < ActiveRecord::Migration[7.0]
  def change
    create_table :employers do |t|
      t.string :name
      t.string :category
      t.integer :certified_year

      t.timestamps
    end
  end
end
