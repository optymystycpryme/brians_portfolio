# Portfolios Controller
class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: %i[show edit update destroy]
  layout 'portfolio'
  access all: %i[show index react],
         user: {
           except: %i[destroy new create update edit sort]
         }, site_admin: :all

  def index
    @portfolio_items = Portfolio.by_position
  end

  def sort
    params[:order].each do |key, value|
      Portfolio.find(value[:id]).update(position: value[:position])
    end

    render nothing: true
  end

  def react
    @react_portfolio_items = Portfolio.react
  end

  def show; end

  def new
    @portfolio_item = Portfolio.new
  end

  def edit; end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html {
          redirect_to portfolios_path,
                      notice: 'Your porfolio item is now live.'
        }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html {
          redirect_to portfolios_path,
                      notice: 'The record was successfully updated.'
        }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    # Destroy/delete the record
    @portfolio_item.destroy

    # Redirect
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Record was removed.' }
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title,
                                      :subtitle,
                                      :body,
                                      :thumb_img,
                                      :main_image,
                                      :url,
                                      :github,
                                      technologies_attributes:
                                        %i[id name _destroy])
  end

  def set_portfolio_item
    # Perform the lookup
    @portfolio_item = Portfolio.find(params[:id])
  end
end
