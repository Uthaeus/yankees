module PlayersHelper
  def image_generator(height:, width:)
    "http://via.placeholder.com/#{width}x#{height}"
  end

  def player_img img, type
    if img.model.main_image? || img.model.thumb_image?
      img
    elsif type == 'thumb'
      image_generator(height: '300', width: '200')
    elsif type == 'main'
      image_generator(height: '600', width: '400')
    end
  end
end
