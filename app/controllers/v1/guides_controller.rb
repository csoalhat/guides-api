class V1::GuidesController < ApplicationController
    def index
        @guides = Guide.all

        render :index, status: :ok
    end

    def create 
        @guide = Guide.new(guide_params)

        @guide.save
        render :create, status: :created
    end

    def destroy
        @guide = Guide.where(id: params[:id]).first
        if @guide.destroy
            head(:ok)
        else 
            head(:unprocessable_entity)
        end
    end

    private 

    def guide_params
        params.require(:guide).permit(:first_name, :last_name, :email)
    end 

end


