class Player < ApplicationRecord

  validates_presence_of :name, :number

  has_many :positions
  accepts_nested_attributes_for :positions,
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['name'].blank? }
end
