require 'rails_helper'

RSpec.describe "nav bar" do
  context "as a visitor" do
    it "can see the nave bar on all pages" do
      comedian = create(:comedian)
      visit root_path

      within "nav-bar" do
        expect(page).to have_link("Return To Comedians")
        expect(page).to have_link("Create a new comedian")
      end

      visit comedians_path

      within "nav-bar" do
        expect(page).to_not have_link("Return To Comedians")
        expect(page).to have_link("Create a new comedian")
      end

      visit comedian_path(comedian)

      within "nav-bar" do
        expect(page).to have_link("Return To Comedians")
        expect(page).to have_link("Create a new comedian")
      end

      visit new_comedian_path

      within "nav-bar" do
        expect(page).to have_link("Return To Comedians")
        expect(page).to_not have_link("Create a new comedian")
      end
    end
  end
end
