class CreateSecuredAssets < ActiveRecord::Migration[7.2]
  def change
    create_table :secured_assets do |t|
      t.string :account_number
      t.integer :cash

      t.timestamps
    end
  end
end
