
class ScoreController < ApplicationController

    def score_params
        params.permit(
            :score,
            :id
        )
    end
    
    def set_player_score
         score_permitted_params = score_params
         new_player_score = Score.create(score: score_permitted_params[:score], user_id: score_permitted_params[:id].to_i)
    end
end