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


 # def create_calendar_event
 #   cal = Icalendar::Calendar.new
 #    cal.event do |e|
 #     e.dtstart     = Icalendar::Values::Date.new('20050428')
 #     e.dtend       = Icalendar::Values::Date.new('20050429')
 #     e.summary     = "Meeting with the man."
 #     e.description = "Have a long lunch meeting and decide nothing..."
 #     e.ip_class    = "PRIVATE"
 #    end
 #
 #    cal.publish
 #  end

def cal_hours
  start_hour = start_time.strftime("%I").to_i*3600
  start_minute = start_time.strftime("%M").to_i*60
  total_start_time = (start_hour + start_minute)/3600
  end_hour = end_time.strftime("%k").to_i*3600
  end_minute = end_time.strftime("%M").to_i*60
  total_end_time = (end_hour + end_minute)/3600.to_f
  (total_end_time  - total_start_time).round(2)
end
end
