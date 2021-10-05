class CollectionsController < ApplicationController
    def index
        collections = Collection.all
        render json: collections
    end

    def create
        collection = Collection.new(collection_params)

        if collection.name.blank? || collection.name == "untitled"
            arr = collection.user.collections.select { |c| c.name.include?("untitled") }
            if arr.length > 0
                collection.name = "untitled-#{arr.length}"
            else
                collection.name = "untitled"
            end
        end
        
        if collection.save
            render json: collection
        else
            render json: {error: "Collection couldn't be saved."}
        end
    end

    # def destroy
    # end

    private
    
    def collection_params
        params.require(:collection).permit(:name, :user_id)
    end
end
