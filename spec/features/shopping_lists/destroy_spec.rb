require 'spec_helper'

describe "Destroy lists" do
  let!(:todo_list) { ShoppingList.create(title: "Groceries", description: "Grocery List.") }

  it "is successfully when clicking Destroy" do

    visit "/shopping_lists"
    within "#shopping_list_#{todo_list.id}" do
      click_link "Destroy"
    end

    expect(page).to_not have_content(todo_list.title)
    expect(ShoppingList.count).to eq(0)
  end

end