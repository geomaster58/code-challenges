def revcap input
  temparr = []
  letarr = input.chars
  letarr.length.times{|x| temparr.unshift(letarr[x])}
  p temparr.map! {|x| temparr.index(x)%2 == 0 ? x : x.capitalize  }.join

end  

revcap "Hey how are you?"