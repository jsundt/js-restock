class Category < ActiveRecord::Base
  has_many :items

  validates :title, presence: true
  validates :icon, presence: true

  def index
    @category = category
  end

  def has_missing_items?
    items.restock.size > 0
  end
end
