class Game < ApplicationRecord
  belongs_to :schedule

  validates_presence_of :opponent
end
