require 'spec_helper'

describe ShoppingList do
  it { should have_many(:shopping_items) }

  describe "#has_complete_items?" do
    let(:todo_list) { ShoppingList.create(title: "Groceries", description: "Grocery list") }

    it "returns true with completed list items" do
      todo_list.shopping_items.create(content: "Eggs", completed_at: 1.minute.ago)
      expect(todo_list.has_completed_items?).to be_true
    end

    it "returns false with no compeleted list items" do
      todo_list.shopping_items.create(content: "Eggs")
      expect(todo_list.has_completed_items?).to be_false
    end
  end

  describe "#has_incomplete_items?" do
    let(:todo_list) { ShoppingList.create(title: "Groceries", description: "Grocery list") }

    it "returns true with incompleted list items" do
      todo_list.shopping_items.create(content: "Eggs")
      expect(todo_list.has_incompleted_items?).to be_true
    end

    it "returns false with no incompeleted list items" do
      todo_list.shopping_items.create(content: "Eggs", completed_at: 1.minute.ago)
      expect(todo_list.has_incompleted_items?).to be_false
    end
  end
end
