class PatientsController < ApplicationController
  
  # TODO: add I18N settings

  def new
    render :new
  end

  def create
    @patient = Patient.new(params[:patient])
    if @patient.save
      redirect_to patients_url
    else
      flash.now[:errors] = @patient.errors.full_message
      render :new
    end
  end

  def edit
    @patient = Patient.find(params[:id])
    render :edit
  end

  def update
  end

  def destroy
    @patient = Patient.find(params[:id])
    @patient.deleted = true
    @patient.save
    redirect_to patients_url
  end

  def show
    @patient = Patient.find(params[:id])
    render :show
  end

  def index
    @patients = Patient.where(deleted: false)
    render :index
  end

  private
    def patient_params
      params.require(:patient).permit(:first_name, :middle_name, :last_name, :date_of_birth, :gender, :status, :location_id, :view_count)
    end
    
end
