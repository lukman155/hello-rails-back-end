module Api
  module V1
    class MessagesController < ApplicationController
      # GET /messages or /messages.json
      def index
        @message = Message.order('RANDOM()').first
        render json: { message: @message.text }
      end
    end
  end
end
