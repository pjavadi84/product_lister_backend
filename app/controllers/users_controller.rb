class UsersController < ApplicationController
    def index 
        users = User.all 
        render json: users
    end

    def show 
        user = User.find(params[:id])
    end

    def new 
        user = User.new
    end

    def create 
        user = User.create!(user_params)

        if user
            session[:user_id] = user.id
            render json: { user: UserSerializer.new(user), user: user }, status: :created
        else
            rnder json: { error: "Something wrong! user can't be created. Try again", status: 500}
        end
    end


    # def login
    #     user = User.find_by(email: params[:email])

    #     if user && user.authenticate(params[:password])
    #         magic = encode_token({user_id: user.id})
    #         render json: {user: UserSerializer.new(user), token: magic }, status: :accepted
    #     else
    #         render json: {error: "Credentials you have provided does not match. Please enter it again or create an account."}, status: :unauthorized
    #     end
    # end

    private
    def user_params
        params.permit(:email, :password, :first_name, :last_name, :address)
    end


end
