class CreateEmployeeProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_profiles do |t|
      t.integer :employee_id
      t.integer :years_working
      t.integer :num_of_days_taken_off, default: 0

      t.timestamps
    end
  end
end
