class ControlTimesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_control_time, only: [:show, :edit, :update, :destroy]

  # GET /control_times
  # GET /control_times.json
  def index
    @control_times = ControlTime.all.paginate(:page => params[:page], :per_page => 15)
  end

  # GET /control_times/1
  # GET /control_times/1.json
  def show
  end

  def not_found
    raise ActionController::RoutingError.new('Not Found')
  rescue
    render_404
  end

  def render_404
    render file: "#{Rails.root}/public/404", :layout => false, :status => :not_found
  end

  # GET /control_times/new
  def new
    @control_time = ControlTime.new
  end

  # GET /control_times/1/edit
  def edit
  end

  # POST /control_times
  # POST /control_times.json
  def create
    @control_time = ControlTime.new(control_time_params)

    respond_to do |format|
      if @control_time.save
        format.html { redirect_to control_times_path, notice: 'Control time was successfully created.' }
        format.json { render :show, status: :created, location: @control_time }
      else
        format.html { render :new }
        format.json { render json: @control_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /control_times/1
  # PATCH/PUT /control_times/1.json
  def update
    respond_to do |format|
      if @control_time.update(control_time_params)
        format.html { redirect_to control_times_path, notice: 'Control time was successfully updated.' }
        format.json { render :show, status: :ok, location: @control_time }
      else
        format.html { render :edit }
        format.json { render json: @control_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /control_times/1
  # DELETE /control_times/1.json
  def destroy
    @control_time.destroy
    respond_to do |format|
      format.html { redirect_to control_times_url, notice: 'Control time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_control_time
      @control_time = ControlTime.find(params[:id]) rescue not_found
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def control_time_params
      params.require(:control_time).permit(:user_id, :hours, :observations, :registration_date, cost_of_hours_center_attributes: [:id, :user_id, :cost_center_id, :hours, :date, :_destroy])
    end
end
