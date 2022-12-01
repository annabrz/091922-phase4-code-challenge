class HeroPowersController < ApplicationController

    def create
        hero_power = HeroPower.create!(hero_power_params)
        render json: hero_power.hero, serializer: HeroWithPowerSerializer, status: 201
      end

      private

      def hero_power_params
        params.permit(:strength, :hero_id, :power_id)
      end


end
