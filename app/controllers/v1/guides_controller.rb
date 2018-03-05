module V1 
    class GuidesController < ApplicationController
        def index
            @guides = current_company.guides
            #@guides = Guide.all

            render :index, status: :ok
        end

        def create 
            @guide = current_activity.guides.build(guide_params)
            # @guide = Guide.new(guide_params)

            if @guide.save
                render :create, status: :created
            else 
                head(:unprocessable_entity)
            end
        end

        def update 
            @guide = current_company.guides.find(params[:id])
            if @guide.update(guide_params)
                render :update
            else 
                head(:unprocessable_entity)
            end 
        end

        def destroy
            @guide = current_activity.guides.find(params[:id])
            # @guide = Guide.where(id: params[:id]).first
            if @guide.destroy
                head(:ok)
            else 
                head(:unprocessable_entity)
            end
        end

        private 

        def current_company 
            @current_company ||= Company.friendly.find(params[:guide_id])
        end

        def current_activity
            @current_activity ||= current_company.activities.friendly.find(params[:activity_id])
        end

        def guide_params
            params.require(:guide).permit(:first_name, :last_name, :email)
        end 
    end
end


