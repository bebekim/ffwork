class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.references :employer, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
