require 'rails_helper'

RSpec.describe "new comedian page" do
  context "as a visitor" do
    it "sees a form to create a new comedian" do
      visit new_comedian_path

      expect(page).to have_field("Name")
      expect(page).to have_field("City")
      expect(page).to have_field("Age")
    end

    it "can add a new comedian" do
      visit new_comedian_path

      fill_in "Name", with: "Trevor"
      fill_in "City", with: "Denver"
      fill_in "Age", with: 24

      click_on "Create Comedian"

      new_comedian = Comedian.last
      expect(current_path).to eq(comedian_path(new_comedian))

      visit comedians_path

      within "#comedian-#{new_comedian.id}" do
        expect(page).to have_content(new_comedian.name)
        expect(page).to have_content(new_comedian.city)
        expect(page).to have_content(new_comedian.age)
      end
    end

    it "can't add a comedian with missing info" do
      create(:comedian)
      visit new_comedian_path

      fill_in "City", with: "Denver"
      fill_in "Age", with: 24

      click_on "Create Comedian"

      expect(current_path).to eq(new_comedian_path)
      expect(Comedian.last.city).to_not eq("Denver")
    end
  end
end
