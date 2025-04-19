module Api
    module V1
      class DaysController < ApplicationController
        def activities
          user = User.find_by(id: params[:user_id])
          return render json: { error: "User not found" }, status: :not_found unless user
  
          @day_number = params[:day_number].to_i
          day_plans = DayPlan.includes(:activity).where(day_number: @day_number)
  
          @activities = day_plans.map do |plan|
            activity = plan.activity
            completed = UserActivity.exists?(
              user_id: user.id,
              activity_id: activity.id,
              day_number: @day_number
            )
  
            { activity: activity, completed: completed }
          end
          head :no_content if @activities.blank?
        end

        def completed_activities
          user = User.find_by(id: params[:user_id])
          return render json: { error: "User not found" }, status: :not_found unless user
        
          day_number = params[:day_number].to_i
        
          completed_user_activities = UserActivity.where(user_id: user.id, day_number: day_number, completed: true)
        
          render json: {
            day: day_number,
            user_id: user.id,
            completed_activities: completed_user_activities
          }, status: :ok
        end
      end
    end
  end