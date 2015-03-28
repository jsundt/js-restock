module ShoppingListHelpers
  def visit_list(list)
    visit "/shopping_lists"
    within "#shopping_list_#{list.id}" do
      click_link "List Items"
    end
  end
end