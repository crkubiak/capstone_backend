class RecordsController < ApplicationController
    def index 
        @records = Record.all
        render json: @records
    end

    def create
        @record = Record.create!(record_params)
        render json: @record
    end

    private

    def record_params
        params.require(:record).permit(:location, :comment, images: [])
    end
end
