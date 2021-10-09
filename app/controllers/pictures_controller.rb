class PicturesController < ApplicationController
    def index
        pictures = Picture.all
        render json: pictures
    end

    def create
        picture = Picture.new(picture_params)

        if picture.save
            render json: picture
        else
            render json: {error: "Picture couldn't be saved."}
        end
    end

    private
    
    def picture_params
        params.permit(:collection_id, :img_file)
    end
end
