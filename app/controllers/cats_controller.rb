class CatsController < ApplicationController
  def index
  end

  def show
    @current_image_id = params[:id].to_i || 1
    @id = @current_image_id % 55
    @api_page = params[:page].to_i || 1

    next_page_limit = ((@api_page + 1 ) * 55)
    current_page_limit = ((@api_page) * 55)

    unless (@current_image_id +1) <= current_page_limit && (@current_image_id +1) <= next_page_limit
      @api_page = @api_page + 1
    end

    @response = HTTParty.get("https://api.imgur.com/3/gallery/r/cats/time/#{@api_page}",
    :headers => { 'Authorization' => 'Client-ID 024cf84e48c0dd4'})
  end
end