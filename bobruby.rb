def bob phrase
  return "Sure." if phrase =~ /^.*\?$/
  return "Whoa chill out!" if phrase =~ /^.*\!$/
  return "Fine be that way!" if phrase =~ /^$/
  return "Whatever"
end

p bob("Hey?")
p bob("alkfkdj? jhgjfh")
p bob("ahfjhdjfdsg???")
p bob("Stop!")
p bob("djfj! dfjsdj")
p bob("")
p bob("fjbjcjjdhkfjkslj")
