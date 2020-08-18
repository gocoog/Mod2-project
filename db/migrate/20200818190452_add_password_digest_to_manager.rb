class AddPasswordDigestToManager < ActiveRecord::Migration[6.0]
  def change
    add_column :managers, :password_digest, :text
    remove_column :managers, :password
  end
end
