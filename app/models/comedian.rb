class Comedian < ApplicationRecord
  validates_presence_of :name, :city, :age

  has_many :specials

  def self.average_age
    Comedian.where(deceased: false).average(:age)
  end
end
