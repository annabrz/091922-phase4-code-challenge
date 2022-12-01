class PowersController < ApplicationController
    def index
        render json: Power.all, status: 200
    end

    def show
        power = Power.find(params[:id])
        render json: power, status: 200
    end

    def update
        power = found_power
        # if power
            power.update!(power_params)
            render json: power, status: 201

        # else
            # render json: {errors: record.errors.full_messages}, status: 201
        # end

    end

    private
    def found_power
        Power.find(params[:id])
    end

    def power_params
        params.permit(:name, :description)
    end

end
