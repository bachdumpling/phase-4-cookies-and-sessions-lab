class SessionsController < ApplicationController
    def index 
        sessions[:page_views] ||= 0
        
        if sessions == 3
            render json: { "error" : "401 Unauthorized" }, status: :unauthorized
        else
            sessions[:page_views] += 1
        end
    end
end
