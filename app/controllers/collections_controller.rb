class CollectionsController < ApplicationController
    def index
        collections = Collection.all
        render json: collections
    end

    def create
        collection = Collection.new(collection_params)

        if collection.name.blank?
            collection.name = "untitled"
        end
        
        if collection.save
            render json: collection
        else
            render json: {error: "Collection couldn't be saved."}
        end
        # byebug
    end

    # def destroy
    # end

    private
    
    def collection_params
        params.require(:collection).permit(:name, :user_id)
    end
end
