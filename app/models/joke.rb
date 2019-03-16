class Joke < ApplicationRecord
  validates_presence_of :joke

  belongs_to :comedian
end
