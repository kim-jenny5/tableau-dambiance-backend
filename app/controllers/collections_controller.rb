class CollectionsController < ApplicationController
    def index
        collections = Collection.all
        # pictures = Picture.all
        # render json: collections, include: { pictures: (pictures.map { |img| ({ id: img.id, img_file: url_for(img) })}) }
        # render json: collections, include: { pictures.map { |img| ({ id: img.id, img_file: url_for(img) }) }}
        render json: collections
    end

    def create
        collection = Collection.new(collection_params)
    end

    def destroy
        # collection = Collection
    end

    private
    
    def collection_params
        params.require(:collection).permit(:name, :user_id)
    end
end
