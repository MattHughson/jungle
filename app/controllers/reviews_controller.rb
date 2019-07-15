class ReviewsController < ApplicationController
  def create
    
    @product = Product.find(params[:product_id])

    @review = @product.reviews.new(review_params)
    if @review.save 
      # redirecting to the same movie show page
      redirect_to product_path(@product)
    end
  
  end
  private

  def review_params
    params.require(:review).permit(:rating, :description)
  end
end
