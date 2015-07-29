class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @homeText = HomeText.all
    @homeImage = HomeImage.all
  end
  def home_texts
    @homeText = HomeText.find(params[:id])
    @homeText.update(params.require(:home_text).permit(:text))
    respond_to do |format|
      format.html { redirect_to :index, notice: 'Success' }
      format.json { respond_with_bip(@homeText) }      
    end
  end

  def home_images
    @homeImage = HomeImage.find(params[:id])
    @homeImage.update(params.require(:home_image).permit(:image))
    respond_to do |format|
      format.html { redirect_to :index, notice: 'Success' }
      format.json { respond_with_bip(@homeImage) }      
    end
  end

  def contact
  end

  def about
  end

  def photos
    @images = Image.all
  end

  def photos_add
    @image = Image.new
    @image.update(params.require(:image).permit(:image))
    respond_to do |format|
      format.html { redirect_to :photos, notice: 'Success' }
      format.json { respond_with_bip(@image) }      
    end
  end

  def photos_delete
    @image = Image.find(params[:id])

    @image.destroy
    respond_to do |format|
      format.html { redirect_to :photos, notice: 'Photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def videos
  end
end
