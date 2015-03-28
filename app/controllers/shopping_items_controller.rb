class ShoppingItemsController < ApplicationController

  before_action :find_shopping_list

  def index
  end

  def new
    @shopping_item = @shopping_list.shopping_items.new
  end

  def create
    @shopping_item = @shopping_list.shopping_items.new(shopping_item_params)

    if @shopping_item.save
      flash[:success] = "Added List Item."
      redirect_to shopping_list_shopping_items_path
    else
      flash[:error] = "There was a problem adding the item"
      render action: :new
    end
  end

  def edit 
    @shopping_item = @shopping_list.shopping_items.find(params[:id])
  end

  def update 
    @shopping_item = @shopping_list.shopping_items.find(params[:id])

    if @shopping_item.update_attributes(shopping_item_params)
      flash[:success] = "Updated List Item."
      redirect_to shopping_list_shopping_items_path
    else
      flash[:error] = "There was a problem saving the item"
      render action: :edit
    end
  end

  def destroy
    @shopping_item = @shopping_list.shopping_items.find(params[:id])
    if @shopping_item.destroy
      flash[:success] = "List item was deleted."
    else
      flash[:error] = "Item could not be deleted."
    end
    redirect_to shopping_list_shopping_items_path
  end


  def url_options
    { shopping_list_id: params[:shopping_list_id] }.merge(super)
  end


  private
  def find_shopping_list
    @shopping_list = ShoppingList.find(params[:shopping_list_id])
  end

  def shopping_item_params
    params[:shopping_item].permit(:content)
  end

end
