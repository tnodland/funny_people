require "rails_helper"

RSpec.describe "comedians index page" do
  context "as a visitor" do
    before :each do
      @com = create(:comedian)
      @young_com = create(:young_comedian)
      @old_com = create(:old_comedian)
      @deceased_com = create(:deceased_comedian)

      @sp1 = create(:special, comedian: @com)
      @sp2 = create(:special, comedian: @com)
      @sp3 = create(:special, comedian: @young_com)
    end

    it "should see all comedians" do
      visit comedians_path

      within "#comedian-#{@com.id}" do
        expect(page).to have_content(@com.name)
        expect(page).to have_content(@com.age)
        expect(page).to have_content(@com.city)
        expect(page).to_not have_content(@young_com.age)
      end

      within "#comedian-#{@young_com.id}" do
        expect(page).to have_content(@young_com.name)
        expect(page).to have_content(@young_com.age)
        expect(page).to have_content(@young_com.city)
        expect(page).to_not have_content(@com.age)
      end
    end

    it "should see all specials for each comedian" do
      visit comedians_path
      within "#comedian-#{@com.id}" do
        within "#specials" do
          expect(page).to have_content(@sp1.name)
          expect(page).to have_content(@sp1.length)
          # expect(page).to have_css("img[src*=#{@sp1.image}]")
          expect(page).to have_content(@sp2.name)
        end
      end

      within "#comedian-#{@young_com.id}" do
        within "#specials" do
          expect(page).to have_content(@sp3.name)
          expect(page).to have_content(@sp3.length)
          # expect(page).to have_css("img[src*=#{@sp3.image}]")
        end
      end
    end

    xit "should see some statistics" do
      visit comedians_path
      within "#statistics" do
        expect(page).to have_content("Average age: 30")
      end
    end
  end
end
