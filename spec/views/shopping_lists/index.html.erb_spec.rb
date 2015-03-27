require 'spec_helper'

describe "shopping_lists/index" do
  before(:each) do
    assign(:shopping_lists, [
      stub_model(ShoppingList,
        :title => "Title",
        :description => "MyText"
      ),
      stub_model(ShoppingList,
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of shopping_lists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
