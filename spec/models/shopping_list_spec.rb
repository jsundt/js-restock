require 'spec_helper'

describe ShoppingList do
  it { should have_many(:shopping_items) }
end
