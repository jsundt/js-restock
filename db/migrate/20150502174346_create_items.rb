class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :icon
      t.integer :stock
      t.integer :user_id
      t.references :category, index: true

      t.timestamps null: false
    end
  end
end
