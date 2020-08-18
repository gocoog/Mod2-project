class AddEmailToManager < ActiveRecord::Migration[6.0]
  def change
    add_column :managers, :email, :string
  end
end
