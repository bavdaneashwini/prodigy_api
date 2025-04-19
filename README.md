# prodigy_api
Rails: 4.2.5
Ruby: 2.3.8
I have test api using test data which i have created using seeds.rb.

Api to get all activites for a day to user:
get: http://localhost:3000/api/v1/days/14/activities?user_id=3

Api to get all_completed activities by user:
get: http://localhost:3000/api/v1/days/14/completed_activities?user_id=3

Api by which user can mark there activities acompleted and creates user_activities:
post: http://localhost:3000/api/v1/user_activities  
      body: {
  "user_id": 3,
  "activity_id": 7,
  "day_number": 14
}
