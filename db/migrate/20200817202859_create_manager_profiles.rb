class CreateManagerProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :manager_profiles do |t|
      t.integer :manager_id

      t.timestamps
    end
  end
end
