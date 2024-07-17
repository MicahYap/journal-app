class RenameTaskToCategory < ActiveRecord::Migration[7.2]
  def change
    rename_column :categories, :task, :category
  end
end
