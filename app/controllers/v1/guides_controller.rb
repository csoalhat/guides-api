class V1::GuidesController < ApplicationController
    def index
        #@guides = current_user.guides
        @guides = Guide.all

        render :index, status: :ok
    end

    def create 
        @guide = current_user.guides.build(guide_params)
        # @guide = Guide.new(guide_params)

        @guide.save
        render :create, status: :created
    end

    def destroy
        @guide = current_user.guides.where(id: params[:id]).first
        # @guide = Guide.where(id: params[:id]).first
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


