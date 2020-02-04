class UsersController < ApplicationController
	before_action :authenticate_user!

	def profile
  	@events = current_user.events
    @events = @events.order("event_datetime ASC")      
    @grouped_events = @events.group_by{ |t| t.event_datetime.to_date} 
	end
end
