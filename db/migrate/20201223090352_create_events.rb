class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :program_name, null: false
      t.integer :start_year, null: false
      t.integer :start_month, null: false
      t.integer :start_day, null: false
      t.integer :end_year, null: false
      t.integer :end_month, null: false
      t.integer :end_day, null: false
      t.string :place, null: false
      t.string :manager_name, null: false
      t.string :description
      t.references :item, null: false, foreign_key: true
      t.timestamps
    end
  end
end
