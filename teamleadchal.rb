require 'time'
# need to see when the team is available for 30 minutes
# so that can figure out best time to schedule
# dev hours 8:30-5:00, lunch at 12:00-1:00, each have appointments at 9:00-9:30, 9:00-11:30, 10:00-11:00, 2:30-3:00, 2:30-3:30
# want this back
# [['8:30', '9:00'], ['11:30', '12:00'], ['1:00', '1:30'], ['1:30', '2:00'], ['2:00', '2:30'], ['3:30', '4:00']]

unavailable_times = [['9:00', '9:30'], ['9:00', '11:30'], ['10:00', '11:00'], ['2:30', '3:00'], ['2:30', '3:30']]

def time_checker unavailable_times
  
  unavailable_times.each{|x|  x.map!{|x|  Time.parse(x)}}
  p unavailable_times.transpose
end

time_checker unavailable_times