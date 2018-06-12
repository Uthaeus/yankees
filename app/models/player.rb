class Player < ApplicationRecord
  belongs_to :user
  validates_presence_of :name, :number

  has_many :positions
  accepts_nested_attributes_for :positions,
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  mount_uploader :thumb_image, PlayerUploader
  mount_uploader :main_image, PlayerUploader
end
