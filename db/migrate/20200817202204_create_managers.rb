class CreateManagers < ActiveRecord::Migration[6.0]
  def change
    create_table :managers do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.integer :passcode
      t.text :password

      t.timestamps
    end
  end
end
