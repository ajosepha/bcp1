class PillsController < ApplicationController
	def new
	end

	def index
		@pills = Pill.all.order(:name)
	end

	def show
		@pill = Pill.find(params[:id])
		@reviews = Review.where(pill_id: params[:id])
		@count = []
		@reviews.each do |review|
			@count.push(review.title)
		end
	end
end
