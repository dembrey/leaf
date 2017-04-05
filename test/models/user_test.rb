require 'test_helper'

class UserTest < ActiveSupport::TestCase
  context "associations" do
    should have_many(:skills)
  end

  context "validations" do
    should validate_presence_of(:first_name)
  end
end
