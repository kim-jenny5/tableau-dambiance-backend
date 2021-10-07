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

    # def update
    #     collection = Collection.find_by_id(params[:id])

    #     if collection.update(collection_params)
    #         render json: collection
    #     else
    #         render json: {error: "Collection couldn't be updated."}
    #     end
    # end

    def destroy
        collection = Collection.find_by_id(params[:id])
        collection.destroy
        render json: {message: "#{collection.name} has been successfully deleted."}
    end

    private
    
    def collection_params
        params.require(:collection).permit(:id, :name, :user_id)
    end
end
