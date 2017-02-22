class EmotionsController < ApplicationController
  def new
    @emotion = Emotion.new
  end

  def create
    @emotion = Emotion.new(emotion_params)
    if @emotion.save
      redirect_to emotions_path
    else
      render "new"
    end

  end

  def index
    @emotions = current_user.emotions
  end
  private
  def emotion_params
    params.require(:emotion).permit(:recognize, :category_id, :user_id,
                                    :investigation, :action_item, :current)
  end
end
