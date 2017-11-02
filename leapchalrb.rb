require 'date'

years = []
daterange = ((Date.new(1492,1,1))..(Date.new(2017,10,10))).to_a
daterange.keep_if{|x| x.leap?}.each{|x| years << x.strftime("%Y")}
p years.uniq.length



