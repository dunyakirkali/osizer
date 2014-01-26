class PagesController < ApplicationController
  def home
    @image = Image.new
  end
end
