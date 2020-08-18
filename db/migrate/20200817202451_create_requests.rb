class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.integer :employee_id
      t.integer :manager_id
      t.integer :reason_id
      t.text :explanation
      t.text :man_explanation
      t.string :approve_or_deny, default: ""

      t.timestamps
    end
  end
end
