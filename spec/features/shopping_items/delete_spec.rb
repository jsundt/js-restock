require 'spec_helper'

describe "Editing todo items" do
  let!(:todo_list) { ShoppingList.create(title: "Groceries", description: "Grocery List.") }
  let!(:todo_item) { todo_list.shopping_items.create(content: "Milk") }

  it "is successful" do
    visit_list(todo_list)
    within "#shopping_item_#{todo_item.id}" do
      click_link "Delete"
    end

    expect(page).to have_content("List item was deleted.")
    expect(ShoppingItem.count).to eq(0)
  end

end