class ShoppingItemsController < ApplicationController
  def index
    @shopping_list = ShoppingList.find(params[:shopping_list_id])
  end

  def new
    @shopping_list = ShoppingList.find(params[:shopping_list_id])
    @shopping_item = @shopping_list.shopping_items.new
  end

  def create
    @shopping_list = ShoppingList.find(params[:shopping_list_id])
    @shopping_item = @shopping_list.shopping_items.new(shopping_item_params)

    if @shopping_item.save
      flash[:success] = "Added List Item."
      redirect_to shopping_list_shopping_items_path
    else
      flash[:error] = "There was a problem adding the item"
      render action: :new
    end
  end

  private
  def shopping_item_params
    params[:shopping_item].permit(:content)
  end

end
