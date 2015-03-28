require 'spec_helper'

describe "Create todo items" do
  let!(:todo_list) { ShoppingList.create(title: "Groceries", description: "Grocery List.") }

  it "is successful with valid content" do
    visit_list(todo_list)
    click_link "New Shopping Item"
    fill_in "Content", with: "Milk"
    click_button "Save"

    expect(page).to have_content("Added List Item.")
    within(".shopping_items") do
      expect(page).to have_content("Milk")
    end
  end

  it "displays an error with no content" do
    visit_list(todo_list)
    click_link "New Shopping Item"

    fill_in "Content", with: ""
    click_button "Save"

    within("div.flash") do
      expect(page).to have_content("There was a problem adding the item")
    end
    expect(page).to have_content("Content can't be blank")
  end

  it "displays an error with content less than 2 characters" do
    visit_list(todo_list)
    click_link "New Shopping Item"

    fill_in "Content", with: ""
    click_button "Save"

    within("div.flash") do
      expect(page).to have_content("There was a problem adding the item")
    end
    expect(page).to have_content("Content is too short")
  end

end