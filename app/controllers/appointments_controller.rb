class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]

  # GET /appointments
  # GET /appointments.json
  def index
    if params[:office] && params[:date]
      @appointments = Appointment.where(office: params[:office], date: params[:date])
    elsif params[:office] 
      @appointments = Appointment.where(office: params[:office])
    elsif params[:date] 
      @appointments = Appointment.where(date: params[:date])
    else
      @appointments = Appointment.all
    end
  end

  # GET /appointments/1
  # GET /appointments/1.json
  def show
  end

  # GET /appointments/new
  def new
    @appointment = Appointment.new
  end

  # GET /appointments/1/edit
  def edit
  end

  # POST /appointments
  # POST /appointments.json
  def create
    @appointment = Appointment.new(appointment_params)
    
    if validateNumberOfSlots(@appointment.date, @appointment.time, @appointment.office) 
      respond_to do |format|
        if @appointment.save
          format.html { redirect_to @appointment, notice: 'Appointment was successfully created.' }
          format.json { render :show, status: :created, location: @appointment }
        else
          format.html { render :new }
          format.json { render json: @appointment.errors, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        format.html { redirect_to new_appointment_path, notice: 'slots are full.' }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointments/1
  # PATCH/PUT /appointments/1.json
  def update
    apptToUpdate = appointment_params
    if (@appointment.date != apptToUpdate[:date] || @appointment.time != apptToUpdate[:time] || @appointment.office != apptToUpdate[:office]) && 
      validateNumberOfSlots(apptToUpdate[:date], apptToUpdate[:time], apptToUpdate[:office]) 
      respond_to do |format|
        if @appointment.update!(apptToUpdate)
          format.html { redirect_to @appointment, notice: 'Appointment was successfully updated.' }
          format.json { render :show, status: :ok, location: @appointment }
        else
          format.html { render :edit }
          format.json { render json: @appointment.errors, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        format.html { render :edit, notice: 'slots are full.' }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
    
  end

  # DELETE /appointments/1
  # DELETE /appointments/1.json
  def destroy
    @appointment.destroy
    respond_to do |format|
      format.html { redirect_to appointments_url, notice: 'Appointment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def validateNumberOfSlots(date, time, office) 
    allAppts = Appointment.where(date: date, time: time, office: office)
    puts allAppts.class
    if allAppts && allAppts.length >= 2
      return false
    end
    
    return true
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_params
      params.require(:appointment).permit(:date, :time, :firstname, :lastname, :office, :phone, :email, :staff)
    end
end
