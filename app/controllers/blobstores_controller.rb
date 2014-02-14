class BlobstoresController < ApplicationController
  before_action :set_blobstore, only: [:show, :edit, :update, :destroy]

  # GET /blobstores
  # GET /blobstores.json
  def index
    @blobstores = Blobstore.all
  end

  # GET /blobstores/1
  # GET /blobstores/1.json
  def show
  end

  # GET /blobstores/new
  def new
    @blobstore = Blobstore.new
  end

  # GET /blobstores/1/edit
  def edit
  end

  # POST /blobstores
  # POST /blobstores.json
  def create
    @blobstore = Blobstore.new(blobstore_params)

    respond_to do |format|
      if @blobstore.save
        format.html { redirect_to @blobstore, notice: 'Blobstore was successfully created.' }
        format.json { render action: 'show', status: :created, location: @blobstore }
      else
        format.html { render action: 'new' }
        format.json { render json: @blobstore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blobstores/1
  # PATCH/PUT /blobstores/1.json
  def update
    respond_to do |format|
      if @blobstore.update(blobstore_params)
        format.html { redirect_to @blobstore, notice: 'Blobstore was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @blobstore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blobstores/1
  # DELETE /blobstores/1.json
  def destroy
    @blobstore.destroy
    respond_to do |format|
      format.html { redirect_to blobstores_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blobstore
      @blobstore = Blobstore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blobstore_params
      params.require(:blobstore).permit(:name, :continent, :country, :city, :title, :caption, :picture)
    end
end
