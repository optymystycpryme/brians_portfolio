module PortfoliosHelper
  def image_generator(height:, width:)
    "https://picsum.photos/#{height}/#{width}?random"
  end

  def portfolio_img(img, type)
    if img.model.main_image? || img.model.thumb_img?
      img
    elsif type == 'thumb'
      image_generator(height: '350', width: '200')
    else
      image_generator(height: '600', width: '400')
    end
  end
end
