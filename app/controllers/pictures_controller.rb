class PicturesController < ApplicationController
    def index
        pictures = Picture.all
        # render json: pictures.map { |img| ({ id: img.id, img_file: url_for(img), collection: img.collection })}
        render json: pictures
    end

    def create
        picture = Picture.new(picture_params)
        # byebug
        # picture.img_file.attach(picture_params[:img_file])
        if picture.save
            render json: picture
        else
            render json: {error: "Picture couldn't be saved."}
        end
    end

    # def destroy
    # end

    private
    
    def picture_params
        # params.require(:picture).permit(:collection_id, :img_file)
        params.permit(:collection_id, :img_file)
    end
end
