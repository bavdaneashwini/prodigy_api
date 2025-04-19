class Activity < ActiveRecord::Base
    belongs_to :category
    has_many :day_plans
    has_many :user_activities
end
