class Item < ActiveRecord::Base
  belongs_to :category

  validates :title, presence: true
  validates :icon, presence: true

  scope :restock, -> { where("stock is not null") }
  scope :instock, -> { where(stock: nil) }

  def restock?
    stock.blank?
  end
  
end
