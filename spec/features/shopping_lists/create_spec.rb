require 'spec_helper'

describe "Creating lists" do
  def create_lists(options={})
    options[:title] ||= "My todo list"
    options[:description] ||= "This is my todo list."

    visit "/shopping_lists"
    click_link "New Shopping list"
    expect(page).to have_content("New Shopping List")

    fill_in "Title", with: options[:title]
    fill_in "Description", with: options[:description]
    click_button "Create Shopping list"
  end


  it "redirects to the index page on success" do
    create_lists

    expect(page).to have_content("My todo list")
  end

  it "displays an error when you forget the title" do
    expect(ShoppingList.count).to eq(0)

    create_lists title: ""

    expect(page).to have_content("error")
    expect(ShoppingList.count).to eq(0)

    visit "/shopping_lists"
    expect(page).to_not have_content("This is what I need")
  end

  it "displays an error when the title is less than 3 characters" do
    expect(ShoppingList.count).to eq(0)

    create_lists title: "Hi"

    expect(page).to have_content("error")
    expect(ShoppingList.count).to eq(0)

    visit "/shopping_lists"
    expect(page).to_not have_content("This is what I need")
  end

  it "displays an error when the list has no Description" do
    expect(ShoppingList.count).to eq(0)

    create_lists description: ""

    expect(page).to have_content("error")
    expect(ShoppingList.count).to eq(0)

    visit "/shopping_lists"
    expect(page).to_not have_content("List number 1")
  end

  it "displays an error when the Description has less than 5 characters" do
    expect(ShoppingList.count).to eq(0)

    create_lists description: "Food"

    expect(page).to have_content("error")
    expect(ShoppingList.count).to eq(0)

    visit "/shopping_lists"
    expect(page).to_not have_content("List number 1")
  end
end