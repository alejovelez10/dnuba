class TypeSpendsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_type_spend, only: [:show, :edit, :update, :destroy]

  # GET /type_spends
  # GET /type_spends.json
  def index
    @type_spends = TypeSpend.all
  end

  # GET /type_spends/1
  # GET /type_spends/1.json
  def show
  end

  # GET /type_spends/new
  def new
    @type_spend = TypeSpend.new
  end

  # GET /type_spends/1/edit
  def edit
  end

  # POST /type_spends
  # POST /type_spends.json
  def create
    @type_spend = TypeSpend.new(type_spend_params)

    respond_to do |format|
      if @type_spend.save
        format.html { redirect_to @type_spend, notice: 'Type spend was successfully created.' }
        format.json { render :show, status: :created, location: @type_spend }
      else
        format.html { render :new }
        format.json { render json: @type_spend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_spends/1
  # PATCH/PUT /type_spends/1.json
  def update
    respond_to do |format|
      if @type_spend.update(type_spend_params)
        format.html { redirect_to @type_spend, notice: 'Type spend was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_spend }
      else
        format.html { render :edit }
        format.json { render json: @type_spend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_spends/1
  # DELETE /type_spends/1.json
  def destroy
    @type_spend.destroy
    respond_to do |format|
      format.html { redirect_to type_spends_url, notice: 'Type spend was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_spend
      @type_spend = TypeSpend.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_spend_params
      params.require(:type_spend).permit(:name, :description, :code, :user_id)
    end
end
