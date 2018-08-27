require_relative 'super_useful'

begin
  puts "'five' == #{convert_to_int('five')}" 
rescue ArgumentError
  puts "*** Requires string that can be converted to integer ***"
  nil 
end 


#feed_me_a_fruit


sam = BestFriend.new('', 3, '')

sam.talk_about_friendship
sam.do_friendstuff
sam.give_friendship_bracelet
