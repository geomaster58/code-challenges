sumarr = [1,2,3,4,5,6,7]
def reality sumarr
 p sumarr.inject(&:+)
end

reality sumarr

def forsum sumarr
  num = 0
  for x in sumarr
    num += x
  end
  p num
end

forsum sumarr

def whilesum sumarr
  num = 0; i = 0
  while i < sumarr.length
    num += sumarr[i]; i += 1
  end
  p num
end

whilesum sumarr

def untilsum sumarr
  i = 0
  num = 0
  until i == sumarr.length do
    num += sumarr[i]
    i += 1
  end
  p num
end

untilsum sumarr

def adder arr
  if arr.empty?
    return 0
  else
   num = arr.pop
   return num + adder(arr) 
  end   
end

p adder sumarr







