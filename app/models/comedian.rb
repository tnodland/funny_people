class Comedian < ApplicationRecord
  validates_presence_of :name, :city, :age

  has_many :specials
  has_many :jokes

  def self.average_age
    Comedian.where(deceased: false).average(:age)
  end

  def self.unique_cities
    Comedian.distinct.pluck(:city)
  end
end
