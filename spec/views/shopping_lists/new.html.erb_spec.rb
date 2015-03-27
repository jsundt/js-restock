require 'spec_helper'

describe "shopping_lists/new" do
  before(:each) do
    assign(:shopping_list, stub_model(ShoppingList,
      :title => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new shopping_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", shopping_lists_path, "post" do
      assert_select "input#shopping_list_title[name=?]", "shopping_list[title]"
      assert_select "textarea#shopping_list_description[name=?]", "shopping_list[description]"
    end
  end
end
