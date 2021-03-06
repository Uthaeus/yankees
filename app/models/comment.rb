class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :topic

  validates :content, presence: true, length: { minimum: 2, maximum: 500 }

  after_create_commit { CommentBroadcastJob.perform_later(self) }
end
