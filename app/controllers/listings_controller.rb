class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

 def new
   @listing = Listing.new
 end

 def create
   user = current_user
   @listing = user.listings.new(listing_params)
   if @listing.save
     flash[:notice] = "Listing successfully saved"
     redirect_to listing_path(@listing)
   else
     flash[:alert] = "There was a problem creating your listing. Please try again."
     render new
   end
 end

 def show
 end

private

  def listing_params
    params.require(:listing).permit(:price, :title, :details, :location)
  end
end
