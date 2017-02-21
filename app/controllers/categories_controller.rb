class CategoriesController < ApplicationController
  def index
    @emotion = Emotion.new
    @categories = Category.all
  end

end
