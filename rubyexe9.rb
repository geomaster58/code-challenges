def baseball_team_list
  ["A's", 'Angels', 'Astros'].last
end  


puts baseball_team_list



def second_baseball_team_list
  ["A's", 'Angels', 'Astros'].last
end




class Invoice
  def self.print_out
     p "Printed out invoice"

   end 

   def convert_to_pdf
     p "Converted to pdf"
   end
end  


Invoice.print_out

i = Invoice.new
i.convert_to_pdf


full_name = Proc.new { |first| (first + " " ) * 5}
p full_name["JJ"]
p full_name.call("JJ")



first_name = -> (first) { (first + " ") * 3}
p first_name["JJ"]

def full(first,last)
  first + " " + last
end


puts full "Hey", "Yo"

def address city:, state:, zip:
  puts city
  puts state
  puts zip
end


address city: "Lehi", state: "Utah", zip: 84043

puts "JJs-MacBook-Pro:Documents jjkeeney$"



def roster *players

p players

end  

roster "dfgsgfd", "dfhgjggsgs", "ehjejdsjgjsd", "dfjhdsghsdfgfjgfg", "ddjfdjggvwiodncvn", "orhjjuifrgsfdcx"


def roster2 **players_with_postions

  players_with_postions.each do |player, position|

    puts "Player: #{player}"
    puts "Position: #{position}"

  end

end


def invoice3 options={}

puts options[:company]
puts options[:total]
puts options[:something_else]
  
end

