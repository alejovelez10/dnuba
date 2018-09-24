class GeneralSpendsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_general_spend, only: [:show, :edit, :update, :destroy]

  # GET /general_spends
  # GET /general_spends.json

  def index

    if  params[:search] || params[:search1] || params[:search2]

      @general_spends = GeneralSpend.search(params[:search], params[:search1], params[:search2]).order(created_at: :desc)
    else

      @general_spends = GeneralSpend.order(created_at: :desc)

    end
  end

  # GET /general_spends/1
  # GET /general_spends/1.json
  def show
  end

  # GET /general_spends/new
  def new
    @general_spend = GeneralSpend.new
  end

  # GET /general_spends/1/edit
  def edit
  end

  # POST /general_spends
  # POST /general_spends.json
  def create
    @general_spend = GeneralSpend.new(general_spend_params)

    respond_to do |format|
      if @general_spend.save
        format.html { redirect_to general_spends_url, notice: 'General spend was successfully created.' }
        format.json { render :show, status: :created, location: @general_spend }
      else
        format.html { render :new }
        format.json { render json: @general_spend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /general_spends/1
  # PATCH/PUT /general_spends/1.json
  def update
    respond_to do |format|
      if @general_spend.update(general_spend_params)
        format.html { redirect_to general_spends_url, notice: 'General spend was successfully updated.' }
        format.json { render :show, status: :ok, location: @general_spend }
      else
        format.html { render :edit }
        format.json { render json: @general_spend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /general_spends/1
  # DELETE /general_spends/1.json
  def destroy
    @general_spend.destroy
    respond_to do |format|
      format.html { redirect_to general_spends_url, notice: 'General spend was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_general_spend
      @general_spend = GeneralSpend.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def general_spend_params
      params.require(:general_spend).permit(:description, :type_spend_id, :user_id, :value, :spend_date, :cost_center_id, :file)
    end
end
