require 'spec_helper'

describe "shopping_lists/show" do
  before(:each) do
    @shopping_list = assign(:shopping_list, stub_model(ShoppingList,
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
  end
end
