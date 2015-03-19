class JobsController < ApplicationController
  before_action :find_job, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(jobs_params)

    if @job.save
      redirect_to @job
    else
      render "New"
    end
  end

  def edit
  end

  def update
  end


  def destroy 
  end

  private

  def jobs_params
    #require job model
    params.require(:job).permit(:title, :description, :company, :url)
  end

  #reason to use find_job
  #we need to use it on multiple actions which specify the job
  def find_job
    @job = Job.find(params[:id])
  end
end
