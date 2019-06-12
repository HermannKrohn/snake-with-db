class UserController < ApplicationController

    def authenticate_params
        params.permit(
            user: [
                :username
            ]
        )
    end      

    def signin
        parameter = params.permit(
            user: [
                :selection
            ]
        )
        selection = parameter[:user][:selection]
        if(selection == "signup")
            redirect_to '/signup'
        else#redirect to login page

        end
    end


    def signup #do not need this method because html document has the same name as method so it is implicit
        render :signup
    end

    def create_account
        new_user = User.create(authenticate_params[:user])
        user_id = new_user[:id]
        redirect_to "/#{user_id}/snake"
    end 
end
