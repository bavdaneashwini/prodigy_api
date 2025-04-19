json.day @day_number
json.user_id @user.id
json.completed_activities do
  @completed_user_activities.each do |ua|
    json.id ua.id
    json.user_id ua.user_id
    json.day_number ua.day_number
    json.completed ua.completed
  end
end
