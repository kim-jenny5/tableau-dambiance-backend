class PicturesController < ApplicationController
    def index
        pictures = Picture.all
        # render json: pictures.map { |img| ({ id: img.id, img_file: url_for(img), collection: img.collection })}
        render json: pictures
    end

    # def show
    #     # byebug
    #     picture = Picture.find(params[:id])
    #     render json: picture
    # end

    def create
        picture = Picture.new(picture_params)
    end

    def destroy
        
    end

    private
    
    def picture_params
        # params.require(:picture).permit(:collection_id)
    end
end
