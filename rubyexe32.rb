def interval time 
  10.times do 
    yield
    sleep(time)
  end
end

interval 2 do
  puts "hey there"
end