require 'rails_helper'

RSpec.describe Comedian do
  describe "validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :city}
    it {should validate_presence_of :age}
  end
end
