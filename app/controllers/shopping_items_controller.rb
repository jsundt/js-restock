class ShoppingItemsController < ApplicationController
  def index
    @shopping_list = ShoppingList.find(params[:shopping_list_id])
  end
end
