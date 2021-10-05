class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def create
        user = User.new(user_params)
        # user = User.find_or_create_by(user_params)

        # if user.valid?
        if user.save
            render json: user
        else
            render json: {error: "User couldn't be saved."}
        end
    end

    private

    def user_params
        params.require(:user).permit(:username)
    end
end
