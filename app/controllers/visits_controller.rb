class VisitsController < ApplicationController
    before_action :find_estate, only: [:create, :edit, :update, :destroy]

    def create
        @visit = Visit.new(visit_params)
        @visit.estate_id = params[:estate_id]
        @visit.user_id = current_user.id 
        @visit.save
        redirect_to @estate 
    end

    def edit
        @visit = Visit.find(params[:id])
        @visit.user_id = current_user.id
    end
    
    
    def update
        @visit = Visit.find(params[:id])
        @visit.update(visit_params)
        redirect_to @estate
    end

    def destroy
        @visit = Visit.find(params[:id])
        @visit.destroy
        redirect_to @estate
    end
        

    private
    def find_estate
        @estate = Estate.find(params[:estate_id])
    end

    def visit_params
        params.require(:visit).permit(:content, :start, :end, :estate_id, :visit_id, :user_id)
    end
    
end
