class TopicsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "topics_#{params['topic_id']}_channel"
  end

  def unsubscribed
  end

  def send_comment(data)
    current_user.comments.create!(content: data['comment'], topic_id: data['topic_id'])
  end

end