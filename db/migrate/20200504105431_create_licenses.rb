class CreateLicenses < ActiveRecord::Migration[5.2]
  def change
    create_table :licenses do |t|
      t.string :category,           null: false
      t.string :type_name,           null: false
      t.string :rank,                null: false
      # t.string  :number,              null: false
      t.integer :start_year,           null: false
      t.integer :start_month,           null: false
      t.integer :start_date,           null: false
      t.integer :end_year,           null: false
      t.integer :end_month,           null: false
      t.integer :end_date,           null: false
      t.text :comment
      # t.integer :status,              null: false
      # t.integer :government_user_id,  null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
