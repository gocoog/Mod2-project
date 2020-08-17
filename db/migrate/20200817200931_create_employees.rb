class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :username
      t.string :email
      t.text :password

      t.timestamps
    end
  end
end
