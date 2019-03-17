require 'rails_helper'

RSpec.describe "nav bar" do
  context "as a visitor" do
    it "can see the nave bar on all pages" do
      comedian = create(:comedian)
      visit root_path

      within "#nav-bar" do
        expect(page).to have_link("Go to Comedians")
        expect(page).to have_link("Create a new Comedian")
        click_link ("Go to Comedians")
      end

      expect(current_path).to eq(comedians_path)

      within "#nav-bar" do
        expect(page).to_not have_link("Return to Comedians")
        expect(page).to have_link("Create a new Comedian")
      end

      visit new_comedian_path

      within "#nav-bar" do
        expect(page).to have_link("Return to Comedians")
        expect(page).to_not have_link("Create a new Comedian")
      end

      visit comedian_path(comedian)

      within "#nav-bar" do
        expect(page).to have_link("Return to Comedians")
        expect(page).to have_link("Create a new Comedian")
      end
    end
  end
end
