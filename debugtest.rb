i = 1
j = 0
until i > 1000000
	i *= 2
	j += 1
end
puts "i = #{i}, j = #{j}"


# simple debugging session

=begin
ruby -r debug debugtest.rb 
Debug.rb
Emacs support available.

debugtest.rb:1:i = 1
(rdb:1) list
[-4, 5] in debugtest.rb
=> 1  i = 1
   2  j = 0
   3  until i > 1000000
   4  	i *= 2
   5  	j += 1
(rdb:1) step
debugtest.rb:2:j = 0
(rdb:1) i
1
(rdb:1) i = 100
100
(rdb:1) step
debugtest.rb:3:until i > 1000000
(rdb:1) step
debugtest.rb:4:	i *= 2
(rdb:1) step
debugtest.rb:5:	j += 1
(rdb:1) i
200
(rdb:1) watch i > 10000
Set watchpoint 1:i > 10000
(rdb:1) cont
Watchpoint 1, toplevel at debugtest.rb:5
debugtest.rb:5:	j += 1
(rdb:1) i
12800
(rdb:1) j
6
(rdb:1) quit
Really quit? (y/n) y
=end
