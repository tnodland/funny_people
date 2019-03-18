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

  describe "class methods" do
    it ".average_time" do
      com = create(:comedian)
      young_com = create(:young_comedian)
      sp1 = create(:special, comedian: com)
      sp2 = create(:short_special, comedian: com)
      sp3 = create(:long_special, comedian: young_com)

      expect(Special.average_time).to eq(60)
    end
  end
end
