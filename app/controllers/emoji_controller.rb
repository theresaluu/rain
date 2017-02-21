class EmojiController < ApplicationController
  before_filter :authorize, only: [:edit, :update]

  def menu
    @emotion = Emotion.new
  end
end
