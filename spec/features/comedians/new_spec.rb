require 'rails_helper'

RSpec.describe "new comedian page" do
  context "as a visitor" do
    it "sees a form to create a new comedian" do
      visit new_comedian_path

      expect(page).to have_field("Name")
      expect(page).to have_field("City")
      expect(page).to have_field("Age")
    end
  end
end
