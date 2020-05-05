class CreateLicenses < ActiveRecord::Migration[5.2]
  def change
    create_table :licenses do |t|
      t.string  :type,                null: false
      t.string  :number,              null: false
      t.integer :start_day,           null: false
      t.integer :end_day,             null: false
      t.string  :comment
      t.string  :status,              null: false
      t.integer :government_user_id,  null: false
      t.integer :company_user_id,     null: false
      t.timestamps
    end
  end
end
