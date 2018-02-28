class V1::GuidesController < ApplicationController
    def index
        @guides = Guide.all

        render json: @guides, status: :ok
    end
end
