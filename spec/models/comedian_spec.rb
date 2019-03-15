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
    it ".unique_cities" do
      com = Comedian.create(name: "name", city: "city1", image: "image", age: 40)
      com2 = Comedian.create(name: "name2", city: "city2", image: "image", age: 40)
      com3 = Comedian.create(name: "name3", city: "city3", image: "image", age: 40)
      com4 = Comedian.create(name: "name4", city: "city1", image: "image", age: 40)

      expect(Comedian.unique_cities).to eq(["city3", "city1", "city2"])
    end

    it ".average_age" do
      com = create(:comedian)
      young_com = create(:young_comedian)
      deceased_com = create(:deceased_comedian)
      old_com = create(:old_comedian, city: "city1")

      expect(Comedian.average_age).to eq(60)
    end
  end
end
