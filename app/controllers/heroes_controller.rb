class HeroesController < ApplicationController
    def index
        render json: Hero.all, status: 200
    end

    def show
        hero = Hero.find(params[:id])
        render json: hero, serializer: HeroWithPowerSerializer, status: 200
    end

    def update
        hero = Hero.find(id:params[:id])
        if hero
            hero.update(hero_params)
            render json: hero, status: :accepted
        else
            render json: {error: "Hero not found"}, status: :not_found
    end
end
end
