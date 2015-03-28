require 'spec_helper'

describe "Viewing todo items" do
  let!(:todo_list) { ShoppingList.create(title: "Groceries", description: "Grocery List.") }

  it "Display the title of the list" do
    visit_list(todo_list)
    within(".title") do
      expect(page).to have_content(todo_list.title)
    end
  end

  it "Displays no items when a list is empty" do
    visit_list(todo_list)
    expect(page.all(".shopping_items .item__content").size).to eq(0)
  end

  it "Displays item content when a list has items" do
    todo_list.shopping_items.create(content: "Milk")
    todo_list.shopping_items.create(content: "Eggs")
    todo_list.shopping_items.create(content: "Condoms")

    visit_list(todo_list)

    expect(page.all(".shopping_items .item__content").size).to eq(3)

    within ".shopping_items" do
      expect(page).to have_content("Milk")
      expect(page).to have_content("Eggs")
      expect(page).to have_content("Condoms")
    end
  end

end