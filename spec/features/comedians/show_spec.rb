require "rails_helper"

RSpec.describe "comedians show page" do
  context "as a visitor" do
    it "can see info for a comedian" do
      comedian = create(:comedian)

      visit comedian_path(comedian)

      expect(page).to have_content(comedian.name)
      expect(page).to have_content(comedian.city)
      expect(page).to have_content(comedian.age)
      expect(page).to have_content(comedian.description)
    end

    it "can be told a joke" do
      comedian = create(:comedian)
      joke = create(:joke, comedian: comedian)

      visit comedian_path(comedian)

      within "#joke-wrapper" do
        expect(page).to_not have_content(joke.joke)
        expect(page).to have_link("Tell me a joke")
        click_link("Tell me a joke")
      end


      expect(current_path).to eq(comedian_show_joke_path(comedian, joke))

      within "#joke-wrapper" do
        expect(page).to have_content(joke.joke)
      end
    end
  end
end
