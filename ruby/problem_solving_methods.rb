# Write a method that takes an array of integers and an integer to search for. The method should return the index of the item, or nil if the integer is not present in the array. Don't use built-in array methods like .index. You are allowed to use .length and .each.

def simple_search (array, integer)
  included_number = array.include?(integer)
  if included_number
    array.each_with_index do |number, index|
      if integer == number
        p index
      end
    end
  else
    return nil
  end
end
simple_search([2,4,6,8,10],11)
simple_search([2,4,6,8,10],10)

# Add a method to your file that takes a number of Fibonacci terms to generate and returns an array of the terms. For example, fib(6) would return [0,1,1,2,3,5]. Your method should work for a large number of terms. To verify your work: the last number in the array generated by fib(100) will be 218922995834555169026. (How can you verify this without having to compare this huge number manually? Be smart with your driver code!)

def fib(integer)
  array = [0,1]
  until array.length == integer
    array << array[-2] + array[-1]
  end
  puts array
end
fib(6)
fib(100)

#bubble sort: very slow, goes element-by-element to compare and sort. "performance is bad", but useful to know.

def bubble_sort(array)
  num_of_elements = array.length #n is total number of values in array

  loop do
    #iterate through entire array and check values of each element and compare them

    swapped = false

    (num_of_elements-1).times do |i|
      if array[i] > array[i + 1]
        #swapping position:
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end
  array
end
array = [2, 3, 4, 12, 6, 4, 5]
p bubble_sort(array)



