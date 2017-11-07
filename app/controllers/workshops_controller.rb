class WorkshopsController < ApplicationController
  before_action :set_workshop, only: [:show, :edit, :update, :destroy]

  # GET /workshops
  # GET /workshops.json
  def index
    @workshops = Workshop.all
  end

  # GET /workshops/1
  # GET /workshops/1.json
  def show
    # @trainer_workshop = TrainerWorkshop.where(:workshop_id => params[:id])
    # @trainerworkshop = []
    # @workshop.trainers contains ids of all the trainers passed from the form and populated in the create method , these id's are used to find trainers from Trainer model and populated in trainername array
    @trainername = []
    @workshop.trainers.ids.map do |id|
      @trainername  << Trainer.find(id)
    end
  end

  # GET /workshops/new
  def new
    @workshop = Workshop.new
    @trainer = Trainer.all
    @lead_trainers = Trainer.where(:category => "Lead Trainer")
  end

  # GET /workshops/1/edit
  def edit
    @trainers = Trainer.all
  end

  # POST /workshops
  # POST /workshops.json
  def create
    @workshop = Workshop.new(workshop_params)
    puts "===================================="
    puts params['trainers']
    puts "===================================="
    trainers = params['trainers'].map do |id|
      Trainer.find(id)
    end
    @workshop.trainers << trainers


    respond_to do |format|
      if @workshop.save
        format.html { redirect_to @workshop, notice: 'Workshop was successfully created.' }
        format.json { render :show, status: :created, location: @workshop }
      else
        format.html { render :new }
        format.json { render json: @workshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workshops/1
  # PATCH/PUT /workshops/1.json
  def update

    # array needs to be cleared before the trainers in teh workshop is updated, otherwise
    # new trainers are appended to existing trainers
    @workshop.trainers.clear
    # trainers are passed from the form which is a parameter in the workshop controller
    puts "99999999999999999999999999999999999999"
      puts params['trainers']
    puts "99999999999999999999999999999999999999"
    trainers = params['trainers'].map do |id|
      Trainer.find(id)
    end

    @workshop.trainers << trainers

    puts "--------------------------------------"
      puts @workshop.trainers
    puts "--------------------------------------"


    respond_to do |format|
      if @workshop.update(workshop_params)
        format.html { redirect_to @workshop, notice: 'Workshop was successfully updated.' }
        format.json { render :show, status: :ok, location: @workshop }
      else
        format.html { render :edit }
        format.json { render json: @workshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workshops/1
  # DELETE /workshops/1.json
  def destroy
    @workshop.destroy
    respond_to do |format|
      format.html { redirect_to workshops_url, notice: 'Workshop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def to_icalender
        @event = Workshop.find(params[:id])
        respond_to do |format|
          format.html
          format.ics do
            cal = Icalendar::Calendar.new
                event = Icalendar::Workshop.new
                event.dtstart = @event.starts_at
                event.dtend = @event.ends_at
                event.summary = @event.title
                event.uid = event.url = "#{event_url}"
                cal.add_event(event)
                cal.publish
                render :text =>  cal.to_ical
          end
        end
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workshop
      @workshop = Workshop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workshop_params
      params.require(:workshop).permit(:name, :start_date, :end_date, :start_time, :end_time, :address, :contact, :amount, :effort_id, :trainers , :hours , :contact_person)
    end
end
