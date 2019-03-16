require "rails_helper"

RSpec.describe "comedians show page" do
  context "as a visitor" do
    it "can see info for a comedian" do
      comedian = create(:comedian)

      visit comedian_path(comedian)

      expect(page).to have_content(comedian.name)
      expect(page).to have_content(comedian.city)
      expect(page).to have_content(comedian.age)
    end
  end
end
