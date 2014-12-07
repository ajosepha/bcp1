class PillsController < ApplicationController
	def new
	end

	def index
		@pills = Pill.all
	end

	def show
		@pill = Pill.find(params[:id])
	end
end
