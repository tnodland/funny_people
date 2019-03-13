require "rails_helper"

RSpec.describe "comedians index page" do
  context "as a visitor" do
    before :each do
      @com1 = create(:comedian)
      @com2 = create(:comedian)
      @dcom1 = create(:deceased_comedian)
      @sp1 = create(:special, comedian: @com1)
      @sp2 = create(:special, comedian: @com1)
    end

    it "should see all comedians" do
      visit comedians_path

      within "#comedian-#{@com1.id}" do
        expect(page).to have_content(@com1.name)
        expect(page).to have_content(@com1.age)
        expect(page).to have_content(@com1.city)
        expect(page).to_not have_content(@com2.age)
      end

      within "#comedian-#{@com2.id}" do
        expect(page).to have_content(@com2.name)
        expect(page).to have_content(@com2.age)
        expect(page).to have_content(@com2.city)
        expect(page).to_not have_content(@com1.age)
      end
    end

    it "should see all specials for each comedian" do
      visit comedians_path
      within "#comedian-#{@com1.id}" do
        within "#specials" do
          expect(page).to have_content(@sp1.name)
          expect(page).to have_content(@sp1.length)
          # expect(page).to have_css("img[src*=#{@sp1.image}]")
          expect(page).to have_content(@sp2.name)
        end
      end
    end
  end
end
