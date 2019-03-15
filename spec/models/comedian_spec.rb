require 'rails_helper'

RSpec.describe Comedian do
  describe "validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :city}
    it {should validate_presence_of :age}
  end

  describe "relationships" do
    it {should have_many :specials}
  end

  describe  "class methods" do
    it ".average_age" do
      com = create(:comedian)
      young_com = create(:young_comedian)
      deceased_com = create(:deceased_comedian)
      old_com = create(:old_comedian, city: "city1")

      expect(Comedian.average_age).to eq(60)
    end
  end
end
