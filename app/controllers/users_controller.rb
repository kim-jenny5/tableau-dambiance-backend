class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def create        
        if !User.all.find_by_username(user_params["username"])
            user = User.new(user_params)
            if user.save
                render json: user
            else
                render json: {error: "User couldn't be created. Please try again."}
            end
        end
    end

    private

    def user_params
        params.require(:user).permit(:username)
    end
end
