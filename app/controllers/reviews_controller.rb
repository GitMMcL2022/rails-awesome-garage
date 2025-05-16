class ReviewsController < ApplicationController
  def create
    raise
  end

  private

  def review_params
    params.required(:review).permit(:comment, :rating)
  end
end
