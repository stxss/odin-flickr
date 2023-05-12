class StaticPagesController < ApplicationController
  require "flickr"

  def index
    return unless params[:uid]

    flickr = Flickr.new
    @pics = flickr.photos.search(user_id: params[:uid])
  end
end
