module Api
  module V1
    class GreetingsController < ApplicationController
      def show_greeting
        greeting = Greeting.order('RANDOM()').first
        render json: { message: greeting.message }
      end
    end
  end
end
