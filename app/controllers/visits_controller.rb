class VisitsController < ApplicationController
    before_action :find_estate

    def create
        @visit = Visit.new(visit_params)
        @visit.estate_id = params[:estate_id]
        @visit.user_id = current_user.id 
        @visit.save
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
