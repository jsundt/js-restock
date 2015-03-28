class ShoppingList < ActiveRecord::Base
  has_many :shopping_items

  validates :title, presence: true
  validates :title, length: { minimum: 3 }
  validates :description, presence: true
  validates :description, length: { minimum: 5 }

  def has_completed_items?
    shopping_items.complete.size > 0
  end
  def has_incompleted_items?
    shopping_items.incomplete.size > 0
  end
end
