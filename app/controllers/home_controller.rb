class HomeController < ApplicationController
  def index
    @banner_images = ['home/homepage-1.jpg', 'home/homepage-2.jpg', 'home/homepage-3.jpg']
  end
end
