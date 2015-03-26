class PhotosController <ApplicationController

  def new
    @listing = Listing.find(params[:listing_id])
    @photo = @listing.photos.new
  end

  def create

      @listing = Listing.find(params[:listing_id])
      @photo = @listing.photos.new(image_params)
      if @photo.save
        flash[:notice] = "Your photo was added!"
        redirect_to user_path(@listing)
      else
        flash[:alert] = "There was a problem uploading your photo.  Please try again."
        render :new
      end
    end

  private

    def image_params
      params.require(:photo).permit(:image)
    end

end
