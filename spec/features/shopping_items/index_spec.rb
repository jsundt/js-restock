require 'spec_helper'

describe "Viewing todo items" do
  let!(:todo_list) { ShoppingList.create(title: "Groceries", description: "Grocery List.") }

  it "Displays no items when a list is empty" do
    visit "/shopping_lists"
    within "#shopping_list_#{todo_list.id}" do
      click_link "List Items"
    end

    expect(page).to have_content("ShoppingItems#index")
  end
end