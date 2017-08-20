class Bubble_Sort
  
  def bubble_sort(array)
    
    for i in 0..array.length do
      for j in 1..array.length - 1 do
        if array[j-1] > array[j] then
          temp = array[j-1]
          array[j-1] = array[j]
          array[j] = temp
        end
      end
    end
  end
end

array = [4,3,78,2,0,2]
bubble = Bubble_Sort.new
puts "Array before sorting: " + array.to_s
bubble.bubble_sort(array)
puts "Array after sorting: " + array.to_s

