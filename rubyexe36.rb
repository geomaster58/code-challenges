def cloned_cycle collection, num
  final_items = []

  num.times  do
    collection.each do|x|
      final_items << x
    end
  end
  final_items
end

p cloned_cycle [1,2,5], 100000