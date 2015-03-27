require 'spec_helper'

describe ShoppingItem do
  it { should belong_to(:shopping_list) }
end
