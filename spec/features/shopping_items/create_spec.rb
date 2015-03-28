require 'spec_helper'

describe "Create todo items" do
  let!(:todo_list) { ShoppingList.create(title: "Groceries", description: "Grocery List.") }

  def visit_list(list)
    visit "/shopping_lists"
    within "#shopping_list_#{list.id}" do
      click_link "List Items"
    end
  end

  it "is successful with valid content" do
    visit_list(todo_list)
    click_link "New Shopping Item"
    fill_in "Content", with: "Milk"
    click_button "Save"

    expect(page).to have_content("Added List Item.")
    within("ul.shopping_items") do
      expect(page).to have_content("Milk")
    end
  end

end