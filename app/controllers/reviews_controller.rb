class ReviewsController < ApplicationController
	def new
		@review = Review.new
		@pill_id = params[:pill_id]
		@pills = Pill.all
		if current_user
			@user = current_user.id
		else
			@user = "no user signed in"
		end
	end

	def create
		@review = Review.new(review_params.merge(pill_id: :pill_id))
		@review.user_id = current_user.id
		if @review.save
			redirect_to @review
		else
			render 'new'
		end
	end

	def show
		@review = Review.find(params[:id])
	end

	def index
		@reviews = Review.all
	end

	def edit
		@review = Review.find(params[:id])
	end

	def update
		@review = Review.find(params[:id])

		if @review.update(review_params)
			redirect_to @review
		else
			render 'edit'
		end
	end

	def destroy
		@review = Review.find(params[:id])
		@review.destroy

		redirect_to reviews_path
		
	end

	private
  	def review_params
    	params.require(:review).permit(:title,:text)
  	end


end
