module ShoppingListHelpers
  def visit_list(list)
    visit "/shopping_lists"
    within dom_id_for(list) do
      click_link "List Items"
    end
  end
end