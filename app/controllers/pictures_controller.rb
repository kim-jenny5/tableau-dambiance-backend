class PicturesController < ApplicationController
    def index
        pictures = Picture.all
        render json: pictures.map { |img| ({ id: img.id, img_file: url_for(img) })}
    end

    # def show
    #     # byebug
    #     picture = Picture.find(params[:id])
    #     # render json: picture
    # end
end
