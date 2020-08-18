class AddPasswordDigestToEmployee < ActiveRecord::Migration[6.0]
  def change
    add_column :employees, :password_digest, :text
    remove_column :employees, :password
  end
end
