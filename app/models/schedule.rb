class Schedule < ApplicationRecord
  belongs_to :user
  validates_presence_of :title

  has_many :games
  accepts_nested_attributes_for :games,
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['opponent'].blank? }
end
