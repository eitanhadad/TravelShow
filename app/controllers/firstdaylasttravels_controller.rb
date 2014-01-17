class FirstdaylasttravelsController < ApplicationController
  before_action :set_firstdaylasttravel, only: [:show, :edit, :update, :destroy]

  # GET /firstdaylasttravels
  # GET /firstdaylasttravels.json
  def index
    @firstdaylasttravels = Firstdaylasttravel.all
  end

  # GET /firstdaylasttravels/1
  # GET /firstdaylasttravels/1.json
  def show
  end


  # GET /firstdaylasttravels/new
  def new
    @firstdaylasttravel = Firstdaylasttravel.new
  end

  # GET /firstdaylasttravels/1/edit
  def edit
  end

  # POST /firstdaylasttravels
  # POST /firstdaylasttravels.json
  def create
    @firstdaylasttravel = Firstdaylasttravel.new(firstdaylasttravel_params)

    respond_to do |format|
      if @firstdaylasttravel.save
        format.html { redirect_to @firstdaylasttravel, notice: 'Firstdaylasttravel was successfully created.' }
        format.json { render action: 'show', status: :created, location: @firstdaylasttravel }
      else
        format.html { render action: 'new' }
        format.json { render json: @firstdaylasttravel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /firstdaylasttravels/1
  # PATCH/PUT /firstdaylasttravels/1.json
  def update
    respond_to do |format|
      if @firstdaylasttravel.update(firstdaylasttravel_params)
        format.html { redirect_to @firstdaylasttravel, notice: 'Firstdaylasttravel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @firstdaylasttravel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /firstdaylasttravels/1
  # DELETE /firstdaylasttravels/1.json
  def destroy
    @firstdaylasttravel.destroy
    respond_to do |format|
      format.html { redirect_to firstdaylasttravels_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_firstdaylasttravel
      @firstdaylasttravel = Firstdaylasttravel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def firstdaylasttravel_params
      params.require(:firstdaylasttravel).permit(:friend_name, :last_travel, :first_day)
    end
end
