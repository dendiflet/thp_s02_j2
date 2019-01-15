msg_original = "ZaBcD"
key = 1
msg_arrayed = msg_original.each_char.map(&:to_s)
msg_arrayed_ascii = msg_arrayed.each do |i| i = i.ord end
print "#{msg_arrayed_ascii}"
puts " "