class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.belongs_to :provider, index: true, foreign_key: true
      t.float :total

      t.timestamps null: false
    end
  end
end
