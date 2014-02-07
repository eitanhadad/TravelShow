class TravelsController < ApplicationController
  before_action :set_travel, only: [:show, :edit, :update, :destroy]

  # GET /travels
  # GET /travels.json
  def index
    @travels = Travel.all
  end

  # GET /travels/1
  # GET /travels/1.json
  def show
  end

  # GET /travels/new
  def new
    @travel = Travel.new
    1.times do
        experience = @travel.experiences.build
    end
  end

  # GET /travels/1/edit
  def edit
  end

  # POST /travels
  # POST /travels.json
  def create
      @travel = Travel.new(travel_params)
    
      #friend = Friend.find(params[:optionsCheckbox])
      #@travel = friend.travels.new(travel_params)

      respond_to do |format|
      if @travel.save
          format.html { redirect_to @travel, notice: 'Travel was successfully created.' }
          format.json { render action: 'show', status: :created, location: @travel }
      else
          format.html { render action: 'new' }
          format.json { render json: @travel.errors, status: :unprocessable_entity }
      end
      end
  end

  # PATCH/PUT /travels/1
  # PATCH/PUT /travels/1.json
  def update
    respond_to do |format|
      if @travel.update(travel_params)
        format.html { redirect_to @travel, notice: 'Travel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @travel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travels/1
  # DELETE /travels/1.json
  def destroy
    @travel.destroy
    respond_to do |format|
      format.html { redirect_to travels_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel
      @travel = Travel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travel_params
        params.require(:travel).permit(:travel, :title, :travel_intro, :friend, :created_at, :friend_id, :front_page_image, :picture, :experiences_attributes => [:id, :title, :continent, :country, :city, :area, :recommended, :picture])
    end
end
