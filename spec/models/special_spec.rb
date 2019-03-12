require 'rails_helper'

RSpec.describe Special do
  describe "validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :image}
    it {should validate_presence_of :length}
  end

  describe "relationships" do
    it {should belong_to :comedian}
  end
end
