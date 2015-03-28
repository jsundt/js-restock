class ShoppingItem < ActiveRecord::Base
  belongs_to :shopping_list

  validates :content, presence: true,
                      length: { minimum: 2 }
end
