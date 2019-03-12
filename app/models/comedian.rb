class Comedian < ApplicationRecord
  validates_presence_of :name, :city, :age

  has_many :specials
end
