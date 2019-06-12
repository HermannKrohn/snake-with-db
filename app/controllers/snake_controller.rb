class SnakeController < ApplicationController

    def permit_params
        params.permit(
            :id
        )
    end 

    def game_screen
        @user_id = permit_params
        # @player_highest_score = Score.where(user_id:  @user_id[:id]).maximum('score')
        # @world_record = Score.maximum('score');
        # byebug
        render :snake
    end
end