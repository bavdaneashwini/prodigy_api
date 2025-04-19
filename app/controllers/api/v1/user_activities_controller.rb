module Api
    module V1
      class UserActivitiesController < ApplicationController
        protect_from_forgery with: :null_session

        def create
          user = User.find_by(id: params[:user_id])
          activity = Activity.find_by(id: params[:activity_id])
          day_number = params[:day_number].to_i
  
          unless user && activity
            return render json: { error: "User or Activity not found" }, status: :not_found
          end
  
          user_activity = UserActivity.find_or_create_by(
            user: user,
            activity: activity,
            day_number: day_number,
            completed: true
          )
  
          render json: {
            message: "Activity marked as completed.",
            user_activity: {
              id: user_activity.id,
              user_id: user.id,
              activity_id: activity.id,
              day_number: day_number
            }
          }, status: :created
        end
      end
    end
  end
  