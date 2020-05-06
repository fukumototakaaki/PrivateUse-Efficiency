class CreateLicenses < ActiveRecord::Migration[5.2]
  def change
    create_table :licenses do |t|
      t.string :type_name,           null: false
      t.string :rank,                null: false
      # t.string  :number,              null: false
      # t.datetime :start_day,           null: false
      # t.datetime :end_day,             null: false
      t.text :comment,               null: true
      # t.integer :status,              null: false
      # t.integer :government_user_id,  null: false
      # t.integer :company_user_id,     null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
