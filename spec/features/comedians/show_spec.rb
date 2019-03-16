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
      expect(page).to_not have_content(joke.joke)
      expect(page).to have_button("Tell me a joke")

      click_button("Tell me a joke")
    end
  end
end
