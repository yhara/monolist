class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

  # GET /photos/new
  def new
    @photo = Photo.new(item_id: params[:item_id])
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = Photo.new(photo_params)
    if @photo.item_id.nil?
      folder = Folder.find(params[:folder_id])
      item = Item.create!(folder: folder)
      @photo.item_id = item.id
    end

    respond_to do |format|
      if @photo.save
        format.html { redirect_to @photo.item, notice: 'Photo was successfully created.' }
        format.json { render :show, status: :created, location: @photo }
      else
        format.html { render :new }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo.destroy
    respond_to do |format|
      format.html { redirect_to @photo.item }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      params.require(:photo).permit(:item_id, :body)
    end
end
