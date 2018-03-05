module V1
    class CompaniesController > ApplicationController
        def create 
            @company = current_user.companies.build(company_params)

            if @company.save
                render :create, status: :created
            else 
                head(:unprocessable_entity)
        end

        def update 
            @company = current_user.companies.friendly.find(params[:id])

            if @company.update(company_params)
                render :update
            else 
                head(:unprocessable_entity)
            end
        end
        private

        def company_params
            params.require(:company).permit(:name, :address, :phone_number, :description, :default_currency)
        end
    end
end