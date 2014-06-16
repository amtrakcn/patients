class PatientsController < ApplicationController

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
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
