class PillsController < ApplicationController
	def new
	end

	def index
		@pills = Pill.all
	end

	def create
		
	end
end
