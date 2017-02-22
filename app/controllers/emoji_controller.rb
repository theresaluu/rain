class EmojiController < ApplicationController
  before_filter :authorize, only: [:edit, :update]

  def menu
    @emotions = Emotion.all.sample(3)
  end
end
