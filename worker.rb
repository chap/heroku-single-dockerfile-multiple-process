$stdout.sync = true # print to logs immediately

i = 0
while true
  puts "#{i} = #{Time.now}"
  sleep 5
  i += 1
end
