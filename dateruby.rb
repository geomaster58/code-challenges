require 'date'

start_date = Time.local(-200000)
end_date = Time.local(2017, 12, 31)
sunday_counter = 0

while end_date >= start_date
  if end_date.strftime("%A") == "Saturday" && end_date.strftime("%d") == "12"
    sunday_counter += 1
    
  end
  end_date -= 86400
end

p sunday_counter
