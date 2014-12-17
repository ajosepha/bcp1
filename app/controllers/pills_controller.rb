class PillsController < ApplicationController
	def new
	end

	def index
		@q = Pill.search(params[:q])
		@pills = @q.result
		# @search = Pill.search(params[:q])
		# @pills = @search.result
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
