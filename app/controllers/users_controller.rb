class UsersController < ApplicationController
	before_action :authenticate_user!

	def profile
  		@events = current_user.events
  		#Retrives all messages and divides into two groups todays messages and other messages
    @grouped_events = @events.group_by{ |t| t.event_datetime.to_date == DateTime.now.to_date }

    if @grouped_events[false].present?
      #Create month wise groups of messages      
      @month_wise_sorted_alerts  = @grouped_events[false].group_by{ |t| t.event_datetime.to_date}
    end 
	end
end
