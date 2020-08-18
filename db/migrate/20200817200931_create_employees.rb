class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.text :password
      t.integer :years_working
      t.integer :num_of_days_taken_off, default: 0

      t.timestamps
    end
  end
end
