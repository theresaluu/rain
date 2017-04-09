module Api
  module V1
    class EmotionsController < ApplicationController

      def create
        @emotion = Product.create(emotion_params)
        render @emotion
      end

      def index
        @emotions =  current_user.present? ? current_user.emotions : Emotion.all
        render @emotions
      end

      def show
        @emotion =  Emotion.find(params[:id])

        render @emotion
      end

      def update
        @emotion = Emotion.update(params[:id], emotions_params)
        render @emotion
      end

      private
      def emotion_params
        params.require(:emotion).permit(:recognize, :category_id, :user_id,
                                        :investigation, :action_item, :current)
      end
    end
  end
end
