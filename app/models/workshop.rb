class Workshop < ApplicationRecord
  belongs_to :effort
  # has_and_belongs_to_many :trainers , :join_table =>  "trainers_workshops"
  has_many :trainer_workshops
  has_many :trainers , through: :trainer_workshops

# # find the trainers assigned and store in an array which is accessed in the show and index page
# # @workshop.trainers contains the id's of the trainers
#   def trainersassigned
#       @trainername = []
#       @workshop.trainers.ids.map do |id|
#         @trainername  << Trainer.find(id)
#       end
#   end


 def create_calendar_event
      cal = Icalendar::Calendar.new
      cal.event do |e|
        e.dtstart = Icalendar::Values::Date.new('20160511')
        e.dtend = Icalendar::Values::Date.new('20160511')
        e.summary = "Summary"
        e.description = "Description"
        e.ip_class = "PRIVATE"
      end
      cal
  end

end
