json.day @day_number

json.activities @activities do |activity_info|
  json.partial! 'api/v1/days/activity', locals: {
    activity: activity_info[:activity],
    completed: activity_info[:completed]
  }
end

