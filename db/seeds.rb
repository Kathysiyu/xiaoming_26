%w(one two).each do |n|
   User.create email: "#{n}@#{n}.com",
               password: 'password',
               password_confirmation: 'password'
 end

 user1 = User.find_by email: 'one@one.com'
 user2 = User.find_by email: 'two@two.com'

 tweet1 = Tweet.create user_id: user1.id,
                      start_date: Date.new(2017, 1, 1),
                      end_date: Date.new(2017, 2, 1),
                      place: 'Tokyo',
                      people: 3,
                      text: 'tweet1 of user1'

 tweet1.replies.create user_id: user2.id,
                       text: 'reply from user2 to tweet1 of user1'
