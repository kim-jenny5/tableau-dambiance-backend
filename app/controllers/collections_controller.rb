class CollectionsController < ApplicationController
    def index
        collections = Collection.all
        # pictures = Picture.all
        # render json: collections, include: { pictures: (pictures.map { |img| ({ id: img.id, img_file: url_for(img) })}) }
        # render json: collections, include: { pictures.map { |img| ({ id: img.id, img_file: url_for(img) }) }}
        render json: collections
    end
end
