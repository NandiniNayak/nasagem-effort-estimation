class Effort < ApplicationRecord
    # estimate the individual costs, total cost and actual cost
    def trainer_cost
        ((lead_number * lead_cost) + (ta_number * ta_cost)) * hours
    end
    
    def stay_cost
        (accomodation + food) * (lead_number + ta_number) * days
    end
    
    def trav_cost
        travel_cost * (ta_number + lead_number) 
    end
    
    def cater_cost
        (catering_cost * attendees_count )
    end
    
    def equipment_cost
        equipment + shipping_cost
    end
    
    def courseDev_cost
        if course_prep == "basic"
            basic_cost = 100
            full_timer_basiccost = 100
            course_dev_cost = basic_cost + full_timer_basiccost
        
        elsif course_prep == "medium"
            medium_cost = 200
            full_timer_mediumcost = 200
            course_dev_cost = medium_cost + full_timer_mediumcost

        else
            complex_cost = 1000
            full_timer_complexcost = 1000
            course_dev_cost = complex_cost + full_timer_complexcost
        end
        return course_dev_cost 
    end
    
    def actual_cost
        trainer_cost + stay_cost + equipment_cost + courseDev_cost + trav_cost + cater_cost + misc
    end
    
    def total_cost
        actual_cost + (0.5 * actual_cost)
    end
end
