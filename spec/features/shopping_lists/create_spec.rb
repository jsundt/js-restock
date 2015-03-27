require 'spec_helper'

describe "Creating lists" do
  it "redirects to the index page on success" do
    visit "/shopping_lists"
    click_link "New Shopping list"
    expect(page).to have_content("New Shopping List")

    fill_in "Title", with: "My todo list"
    fill_in "Description", with: "This is what I need"
    click_button "Create Shopping list"

    expect(page).to have_content("My todo list")
  end

  it "displays an error when you forget the title" do
    expect(ShoppingList.count).to eq(0)

    visit "/shopping_lists"
    click_link "New Shopping list"
    expect(page).to have_content("New Shopping List")

    fill_in "Title", with: ""
    fill_in "Description", with: "This is what I need"
    click_button "Create Shopping list"

    expect(page).to have_content("error")
    expect(ShoppingList.count).to eq(0)

    visit "/shopping_lists"
    expect(page).to_not have_content("This is what I need")
  end

  it "displays an error when the title is less than 3 characters" do
    expect(ShoppingList.count).to eq(0)

    visit "/shopping_lists"
    click_link "New Shopping list"
    expect(page).to have_content("New Shopping List")

    fill_in "Title", with: "Hi"
    fill_in "Description", with: "This is what I need"
    click_button "Create Shopping list"

    expect(page).to have_content("error")
    expect(ShoppingList.count).to eq(0)

    visit "/shopping_lists"
    expect(page).to_not have_content("This is what I need")
  end
end