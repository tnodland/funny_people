class Comedian < ApplicationRecord
  validates_presence_of :name, :city, :age
end
