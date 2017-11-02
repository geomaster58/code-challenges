  
 file_to_save = File.new("otherteams.txt" , 'w+')
file_to_save.puts("A's, Diamondbacks, Mariners, Marlins")
file_to_save.close


teams = File.read("otherteams.txt")
teams.downcase

10.times do 
  sleep 20
  puts "Record Saved...."
  File.open("otherteams.txt", "a") {|f| f.puts "Server started at: #{Time.new}"}
  
end