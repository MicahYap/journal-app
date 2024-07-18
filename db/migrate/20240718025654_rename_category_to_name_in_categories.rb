class RenameCategoryToNameInCategories < ActiveRecord::Migration[7.2]
  def change
    rename_column :categories, :category, :name
  end
end
