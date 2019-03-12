class Special < ApplicationRecord
  validates_presence_of :name, :image, :length

  belongs_to :comedian
end
