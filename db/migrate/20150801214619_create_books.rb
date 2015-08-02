class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.belongs_to :provider, index: true, foreign_key: true
      t.belongs_to :pline, index: true, foreign_key: true
      t.string :name
      t.float :price
      t.integer :stock

      t.timestamps null: false
    end
  end
end
