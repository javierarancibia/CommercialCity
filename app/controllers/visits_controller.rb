class VisitsController < ApplicationController
    before_action :find_estate, only: :create

    def create
        @visit = Visit.new(visit_params)
        @visit.estate_id = params[:estate_id]
        @visit.user_id = current_user.id 
        @visit.save
        redirect_to @estate 
    end

    def edit
        @estate = Estate.find(params[:id])
        @visit = Visit.find(params[:id])
    end
    
    
    def update
        @estate = Estate.find(params[:id])
        @visit = Visit.find(params[:id])
        respond_to do |format|
            if @visit.update(visit_params)
              format.html { redirect_to estate_path, notice: 'visit was successfully updated.' }
              format.json { render :show, status: :ok, location: @visit }
            else
              format.html { render :edit }
              format.json { render json: @visit.errors, status: :unprocessable_entity }
            end
          end
    end

    private
    def find_estate
        @estate = Estate.find(params[:estate_id])
    end

    def visit_params
        params.require(:visit).permit(:content, :start, :end, :estate_id, :visit_id, :user_id)
    end
    
end
