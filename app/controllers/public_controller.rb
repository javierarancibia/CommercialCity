class PublicController < ApplicationController
  def index
    @estates = Estate.latest
  end
end
