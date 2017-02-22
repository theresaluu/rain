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

  def edit
    @emotion = Emotion.find(params[:id])
  end

  def update
    @emotion = Emotion.find(params[:id])
    if @emotion.update_attributes(emotion_params)
      redirect_to emotions_path
    else
      render "edit"
    end

  end

  private
  def emotion_params
    params.require(:emotion).permit(:recognize, :category_id, :user_id,
                                    :investigation, :action_item, :current)
  end
end
