class BoatJobsController < ApplicationController
  before_action :set_boat_job, only: [:show, :edit, :update, :destroy]

  # GET /boat_jobs
  # GET /boat_jobs.json
  def index
    @boat_jobs = BoatJob.all
  end

  # GET /boat_jobs/1
  # GET /boat_jobs/1.json
  def show
  end

  # GET /boat_jobs/new
  def new
    @boat_job = BoatJob.new
  end

  # GET /boat_jobs/1/edit
  def edit
  end

  # POST /boat_jobs
  # POST /boat_jobs.json
  def create
    @boat_job = BoatJob.new(boat_job_params)

    respond_to do |format|
      if @boat_job.save
        format.html { redirect_to @boat_job, notice: 'Boat job was successfully created.' }
        format.json { render :show, status: :created, location: @boat_job }
      else
        format.html { render :new }
        format.json { render json: @boat_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boat_jobs/1
  # PATCH/PUT /boat_jobs/1.json
  def update
    respond_to do |format|
      if @boat_job.update(boat_job_params)
        format.html { redirect_to @boat_job, notice: 'Boat job was successfully updated.' }
        format.json { render :show, status: :ok, location: @boat_job }
      else
        format.html { render :edit }
        format.json { render json: @boat_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_jobs/1
  # DELETE /boat_jobs/1.json
  def destroy
    @boat_job.destroy
    respond_to do |format|
      format.html { redirect_to boat_jobs_url, notice: 'Boat job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boat_job
      @boat_job = BoatJob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boat_job_params
      params.require(:boat_job).permit(:boat_id, :job_id)
    end
end
