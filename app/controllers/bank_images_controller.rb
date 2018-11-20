class BankImagesController < ApplicationController
  before_action :set_bank_image, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /bank_images
  # GET /bank_images.json
  def index
    @bank_images = BankImage.all
  end

  # GET /bank_images/1
  # GET /bank_images/1.json
  def show
  end

  # GET /bank_images/new
  def new
    @bank_image = BankImage.new
  end

  # GET /bank_images/1/edit
  def edit
  end

  # POST /bank_images
  # POST /bank_images.json
  def create
    @bank_image = BankImage.new(bank_image_params)

    respond_to do |format|
      if @bank_image.save
        format.html { redirect_to bank_images_path, notice: 'Bank image was successfully created.' }
        format.json { render :show, status: :created, location: @bank_image }
      else
        format.html { render :new }
        format.json { render json: @bank_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bank_images/1
  # PATCH/PUT /bank_images/1.json
  def update
    respond_to do |format|
      if @bank_image.update(bank_image_params)
        format.html { redirect_to bank_images_path, notice: 'Bank image was successfully updated.' }
        format.json { render :show, status: :ok, location: @bank_image }
      else
        format.html { render :edit }
        format.json { render json: @bank_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bank_images/1
  # DELETE /bank_images/1.json
  def destroy
    @bank_image.destroy
    respond_to do |format|
      format.html { redirect_to bank_images_url, notice: 'Bank image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bank_image
      @bank_image = BankImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bank_image_params
      params.require(:bank_image).permit(:title, :description, :achivo, :user_id)
    end
end
