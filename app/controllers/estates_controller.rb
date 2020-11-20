class EstatesController < ApplicationController
  before_action :set_estate, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :destroy]
  before_action :set_sidebar, except: [:show]
  # load_and_authorize_resource

  # GET /estates
  # GET /estates.json
  def index
    @q = Estate.ransack(params[:q])
    @estates = @q.result.includes(:location, :category, :type)
    # @estates = Estate.with_attached_photos.all
    # @locations = Location.all
    # @types = Type.all
    # @categories = Category.all
  end

  def home
    @q = Estate.ransack(params[:q])
    @estates = @q.result.includes(:location, :category, :type)
    @estates_random = Estate.where(id: Estate.pluck(:id).sample(6))
    @categories = Category.all
  end

  def favorite
    @likes = Like.where(user_id: current_user.id)
    @types = Type.all
    @categories = Category.all
    @locations = Location.all
  end

  def dashboard
    @estates = Estate.where(user_id: current_user.id)
    @types = Type.all
    @categories = Category.all
    @locations = Location.all
  end

  # GET /estates/1
  # GET /estates/1.json
  def show
    @user = @estate.user
    @pre_like = @estate.likes.find { |like| like.user_id == current_user.id}
    @visit = Visit.new
    
    @visit_estate = Visit.where(estate_id: @estate.id)

    respond_to do |format|
      format.html {  }
      format.json { render json: @visit_estate }
    end
  end

  # GET /estates/new
  def new
    @estate = Estate.new
    @locations = Location.all
    @types = Type.all
    @categories = Category.all
  end

  # GET /estates/1/edit
  def edit
    @locations = Location.all
    @types = Type.all
    @categories = Category.all
  end

  # POST /estates
  # POST /estates.json
  def create
    @estate = Estate.new(estate_params)
    @estate.user_id = current_user.id
    @types = Type.all
    @categories = Category.all
    @locations = Location.all

    respond_to do |format|
      if @estate.save
        format.html { redirect_to @estate, notice: 'Estate was successfully created.' }
        format.json { render :show, status: :created, location: @estate }

        estate_mail(
          mail: current_user.email, 
          subject: 'Tu propiedad se ha publicado con exito!',
          message: 'Tu propiedad ha sido creada con exito!'
        )
      else
        format.html { render :new }
        format.json { render json: @estate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estates/1
  # PATCH/PUT /estates/1.json
  def update
    @types = Type.all
    @categories = Category.all
    @locations = Location.all
    respond_to do |format|
      if @estate.update(estate_params)
        format.html { redirect_to @estate, notice: 'Estate was successfully updated.' }
        format.json { render :show, status: :ok, location: @estate }
      else
        format.html { render :edit }
        format.json { render json: @estate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estates/1
  # DELETE /estates/1.json
  def destroy
    @estate.destroy
    respond_to do |format|
      format.html { redirect_to estates_url, notice: 'Estate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def delete_photo
    @types = Type.all
    @categories = Category.all
    @locations = Location.all
    @att = ActiveStorage::Attachment.find_by(blob_id: params[:id])
    @estate = @att.record
    @att.purge
    redirect_to root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estate
      @estate = Estate.find(params[:id])
    end

    def set_sidebar
        @show_sidebar = true
    end

    # Only allow a list of trusted parameters through.
    def estate_params
      params.require(:estate).permit(:name, :address, :price, :rooms, :bathrooms, :parking, :storage, :description, :location_id, :type_id, :category_id, photos: [])
    end

    def visit_params
      params.require(:visit).permit(:content, :start, :end, :estate_id, :visit_id, :user_id)
  end

end
   
