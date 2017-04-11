module Api
  module V1
    class EmotionsController < ApplicationController
      before_filter :restrict_access

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

      def restrict_access
        authenticate_or_request_with_http_token do |token, options|
          ApiKey.exists?(access_token: token)
        end
      end

    end
  end
end
