# Portfolio Model
class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_img

  # Creating custom scope... Awesome!!!
  def self.react
    where(subtitle: 'React')
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails')}
end
