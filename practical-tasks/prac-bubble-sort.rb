# Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).
# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

def sort_bubble(arr = [])
  [] if arr.empty?

  sorted_array = arr.clone
  prev_number = 0
  next_number = 0

  for i in 0...sorted_array.length
    for j in i...sorted_array.length
      next_number = sorted_array[j]
      prev_number = sorted_array[i]

      unless prev_number < next_number
        sorted_array[i] = next_number
        sorted_array[j] = prev_number
      end
    end
  end

  sorted_array
end

puts sort_bubble([4, 3, 78, 2, 0, 2]) === [0, 2, 2, 3, 4, 78]
