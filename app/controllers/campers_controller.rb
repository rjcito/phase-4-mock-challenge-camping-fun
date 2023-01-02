class CampersController < ApplicationController
    def index
        campers = Camper.all
        render json: campers
    end

    def show
        camper = find_camper
        render json: camper, serializer: CamperWithActivitiesSerializer
    end

    private

    def camper_params
        params.permit(:name, :age)
    end

end
