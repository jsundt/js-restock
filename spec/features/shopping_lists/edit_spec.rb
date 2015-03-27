require 'spec_helper'

describe "Editing lists" do
  let!(:todo_list) { ShoppingList.create(title: "Groceries", description: "Grocery List.") }

  def update_todo_list(options={})
    options[:title] ||= "My todo list"
    options[:description] ||= "This is my todo list."
    todo_list = options[:todo_list]

    visit "/shopping_lists"
    within "#shopping_list_#{todo_list.id}" do
      click_link "Edit"
    end

    fill_in "Title", with: options[:title]
    fill_in "Description", with: options[:description]
    click_button "Update Shopping list"
  end


  it "updates a todo list successfully with correct info" do

    update_todo_list  todo_list: todo_list, 
                      title: "New Title", 
                      description: "New Description."

    todo_list.reload

    expect(page).to have_content("Shopping list was successfully updated.")
    expect(todo_list.title).to eq("New Title")
    expect(todo_list.description).to eq("New Description.")
  end

  it "displays an error when the list has no Title" do
    update_todo_list todo_list: todo_list, title: ""
    expect(page).to have_content("error")
  end
  it "displays an error when the Title is to short" do
    update_todo_list todo_list: todo_list, title: "Hi"
    expect(page).to have_content("error")
  end
  it "displays an error when the list has no Description" do
    update_todo_list todo_list: todo_list, description: ""
    expect(page).to have_content("error")
  end
  it "displays an error when the Description is to short" do
    update_todo_list todo_list: todo_list, description: "food"
    expect(page).to have_content("error")
  end

end