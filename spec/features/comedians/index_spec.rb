require "rails_helper"

RSpec.describe "comedians index page" do
  context "as a visitor" do
    it "should see all comedians" do
      com1 = create(:comedian)
      com2 = create(:comedian)
      dcom1 = create(:deceased_comedian)

      visit comedians_path

      within "#comedian-#{com1.id}" do
        expect(page).to have_content(com1.name)
        expect(page).to have_content(com1.age)
        expect(page).to have_content(com1.city)
        expect(page).to_not have_content(com2.age)
      end

      within "#comedian-#{com2.id}" do
        expect(page).to have_content(com2.name)
        expect(page).to have_content(com2.age)
        expect(page).to have_content(com2.city)
        expect(page).to_not have_content(com1.age)
      end
    end
  end
end
