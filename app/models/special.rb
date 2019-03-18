class Special < ApplicationRecord
  validates_presence_of :name, :image, :length

  belongs_to :comedian

  def self.average_time
    Special.average(:length)
  end
end
