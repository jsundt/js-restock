class CreateShoppingItems < ActiveRecord::Migration
  def change
    create_table :shopping_items do |t|
      t.references :shopping_list, index: true
      t.string :content

      t.timestamps null: false
    end
    add_foreign_key :shopping_items, :shopping_lists
  end
end
