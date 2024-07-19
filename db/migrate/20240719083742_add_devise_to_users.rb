# frozen_string_literal: true

class AddDeviseToUsers < ActiveRecord::Migration[7.2]
  def up
    # Only add columns if they do not exist
    unless column_exists?(:users, :email)
      add_column :users, :email, :string, null: false, default: ""
    end
    unless column_exists?(:users, :encrypted_password)
      add_column :users, :encrypted_password, :string, null: false, default: ""
    end
    # Add any other Devise fields you need
  end

  def down
    # Remove columns if they exist
    remove_column :users, :email if column_exists?(:users, :email)
    remove_column :users, :encrypted_password if column_exists?(:users, :encrypted_password)
  end
end