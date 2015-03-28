class AddCompletedAtToShoppingItems < ActiveRecord::Migration
  def change
    add_column :shopping_items, :completed_at, :datetime
  end
end
