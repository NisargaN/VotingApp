class DashboardController < ApplicationController
	def index
		@polls = Poll.order('created_at DESC')
		@users = User.all
	end
end
