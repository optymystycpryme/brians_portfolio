# Portfolio Model
class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                allow_destroy: true,
                                reject_if: lambda { |attrs|
                                  attrs['name'].blank?
                                }

  validates_presence_of :title, :body
  validates :url, :format => URI::regexp(%w(http https))
  validates :github, :format => URI::regexp(%w(http https))

  mount_uploader :thumb_img, PortfolioUploader
  mount_uploader :main_image, PortfolioUploader

  # Creating custom scope... Awesome!!!
  def self.react
    where(subtitle: 'React')
  end

  def self.by_position
    order('position ASC')
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }
end
