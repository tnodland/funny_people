require "rails_helper"

RSpec.describe "comedians index page" do
  context "as a visitor" do
    before :each do
      @com = create(:comedian)
      @young_com = create(:young_comedian)
      @deceased_com = create(:deceased_comedian, age: 90)
      @old_com = create(:old_comedian, city: @com.city, age: @deceased_com.age)

      @sp1 = create(:special, comedian: @com)
      @sp2 = create(:short_special, comedian: @com)
      @sp3 = create(:long_special, comedian: @young_com)
    end

    it "should see all comedians" do
      visit comedians_path

      within "#comedian-#{@com.id}" do
        expect(page).to have_content(@com.name.titleize)
        expect(page).to have_content(@com.age)
        expect(page).to have_content(@com.city)
        expect(page).to_not have_content(@young_com.age)
      end

      within "#comedian-#{@young_com.id}" do
        expect(page).to have_content(@young_com.name.titleize)
        expect(page).to have_content(@young_com.age)
        expect(page).to have_content(@young_com.city)
        expect(page).to_not have_content("Age: #{@com.age}")
      end
    end

    it "comedian names should be links to thier show page" do
      visit comedians_path

      within "#comedian-#{@com.id}" do
        expect(page).to have_link(@com.name.titleize)
        click_link(@com.name.titleize)
      end

      expect(current_path).to eq(comedian_path(@com))
    end

    it "should see an aditional info next to deceased comedians" do
      visit comedians_path

      within "#comedian-#{@deceased_com.id}" do
        expect(page).to have_content("Age: #{@deceased_com.age} (deceased)")
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

    it "should see some statistics" do
      visit comedians_path
      within "#statistics" do
        # excpecting to not see deceased comedian ages in the average
        expect(page).to have_content("Average Age: 60")
        expect(page).to have_content("Average Special Run Time: 60.0 minutes")
        # expect(page).to have_content("Cities: #{@young_com.city}, #{@deceased_com.city}, #{@com.city}")
      end
    end

  end
  context "sort by params" do
    before :each do
      @com = create(:comedian)
      @young_com = create(:young_comedian)
      @deceased_com = create(:deceased_comedian, age: 90)
      @old_com = create(:old_comedian, city: @com.city, age: @deceased_com.age)

      @sp1 = create(:special, comedian: @com)
      @sp2 = create(:short_special, comedian: @com)
      @sp3 = create(:long_special, comedian: @young_com)
    end

    it "can sort by age" do
      visit "/comedians?age=90"

      expect(page).to_not have_content(@com.name)
      expect(page).to_not have_content(@young_com.name)

      within "#comedian-#{@old_com.id}" do
        expect(page).to have_content(@old_com.name.titleize)
        expect(page).to have_content(@old_com.age)
        expect(page).to have_content(@old_com.city)
      end

      within "#comedian-#{@deceased_com.id}" do
        expect(page).to have_content(@deceased_com.name.titleize)
        expect(page).to have_content(@deceased_com.age)
        expect(page).to have_content(@deceased_com.city)
      end
    end
  end
end
