require 'rails_helper'

RSpec.describe Joke do
  describe "validations" do
    it {should validate_presence_of :joke}
  end

  describe "relationships" do
    it {should belong_to :comedian}
  end
end
