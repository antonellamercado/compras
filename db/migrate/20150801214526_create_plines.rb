class CreatePlines < ActiveRecord::Migration
  def change
    create_table :plines do |t|
      t.belongs_to :purchase, index: true, foreign_key: true
      t.integer :units
      t.float :subtotal

      t.timestamps null: false
    end
  end
end
