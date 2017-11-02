require "json"

mixedarray = ['- AZ', 'KY', '* FL', '-- AR']


class Array

  def crazy_array_sorter 
    self.sort_by do |x| 
     x[-2, 2]
    end
  end

end

p mixedarray.crazy_array_sorter