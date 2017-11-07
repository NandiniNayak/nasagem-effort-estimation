class AccountController < ApplicationController
  def page
    # Fetch the workshop details for accounts purpose in ascending order of teh start date
    @workshops = Workshop.order(start_date: :asc)
    # loop through all the workshops and find trainers
    # for each workshop so the trainers name and per hour cost could be displayed to accounts - currently implemented in page.html, must be refactored and moved to the model or controller

  end
end
