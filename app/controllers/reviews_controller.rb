class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @car = Car.find(params[:car_id])

    if @review.save
      redirect_to car_path(@car)

    else
      render 'cars/show', status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.required(:review).permit(:comment, :rating)
  end
end
