def sum_terms(n)
  (0..n).reduce { |product, n| product + (n*n + 1) }
end

def func_any(hash)
  # Check and return true if any key object within the hash is of the type Integer
  # If not found, return false.
  hash.any? {|key, value| key.is_a? Integer}
end

def func_all(hash)
  # Check and return true if all the values within the hash are Integers and are < 10
  # If not all values satisfy this, return false.
  hash.all? {|key, value| (value.is_a? Integer) && value < 10 }
end

def func_none(hash)
  # Check and return true if none of the values within the hash are nil
  # If any value contains nil, return false.
  hash.none? {|key, value| value.nil?}
end

def func_find(hash)
  # Check and return the first object that satisfies either of the following properties:
  #   1. There is a [key, value] pair where the key and value are both Integers and the value is < 20 
  #   2. There is a [key, value] pair where the key and value are both Strings and the value starts with `a`.
  hash.find {|key, value| 
    ((key.is_a? Integer) && (value.is_a? Integer) && value < 20 ) ||
    ((key.is_a? String) && (value.is_a? String) && value.first == 'a') }
end
hash = {"a"=>1, "b"=>2, "c"=>3, "d"=>1}

marks = {"Ramesh":23, "Vivek":40, "Harsh":88, "Mohammad":60}
def group_by_marks(marks, pass_marks)
  marks.group_by do |k, v|
    v > pass_marks ? "Passed" : "Failed" 
  end
end
# puts group_by_marks(marks, 30)

def scoring(array)
  # iterate through each of the element in array using *each* and call update_score on it
  array.each do |user|
    unless user.is_admin?
      user.update_score
    end
  end

  unless user.is_admin?
      user.update_score
  end
end

# loop do
#   coder.practice
#   break if coder.oh_one?
# end

# while not <condition>
#   <code>
# end
# coder.practice until coder.oh_one?

def identify_class(obj)
  case obj
  when Hacker,Submission,TestCase,Contest
      puts "It's a #{obj.class}!"
  else
      puts "It's an unknown model"
  end
end

def iter_hash(hash)
  # your code here
  hash.each do |key, value|
      puts key
      puts value
  end
end

empty_hash = Hash.new 
default_hash = Hash.new(1)
hackerrank = {"simmy" => 100, "vivmbbs" => 200}


array = Array.new
array_1 = Array.new(1)
array_2 = Array.new(2, 10)


def element_at(arr, index)
  # return the element of the Array variable `arr` at the position `index`
  # arr.at(index) # or
  arr[index]
end

def inclusive_range(arr, start_pos, end_pos)
  # return the elements of the Array variable `arr` between the start_pos and end_pos (both inclusive)
  arr[start_pos..end_pos]
end

def non_inclusive_range(arr, start_pos, end_pos)
  # return the elements of the Array variable `arr`, start_pos inclusive and end_pos exclusive
  arr[start_pos...end_pos]
end

def start_and_length(arr, start_pos, length)
  # return `length` elements of the Array variable `arr` starting from `start_pos`
  arr[start_pos..length]
end

arr = [9, 5, 1, 2, 3, 4, 0, -1]

def neg_pos(arr, index)
    # return the element of the array at the position `index` from the end of the list
    arr[-index]
end

def first_element(arr)
    # return the first element of the array
    arr.first
end

def last_element(arr)
    # return the last element of the array
    arr.last
end

def first_n(arr, n)
    # return the first n elements of the array
    arr.take(n)
end

def drop_n(arr, n)
    # drop the first n elements of the array and return the rest
    arr.drop(n)
end

def end_arr_add(arr, element)
  # Add `element` to the end of the Array variable `arr` and return `arr`
  arr.push(element)
end

def begin_arr_add(arr, element)
  # Add `element` to the beginning of the Array variable `arr` and return `arr`
  arr.unshift(element)
end
def index_arr_add(arr, index, element)
  # Add `element` at position `index` to the Array variable `arr` and return `arr`
  arr.insert(index, element)
end

def index_arr_multiple_add(arr, index)
  # add any two elements to the arr at the index
  2.times{arr.insert(index, 'a')}
end

def end_arr_delete(arr)
  # delete the element from the end of the array and return the deleted element
  arr.pop
end

def start_arr_delete(arr)
  # delete the element at the beginning of the array and return the deleted element
  arr.shift
end

def delete_at_arr(arr, index)
  # delete the element at the position #index
  arr.delete_at(index)
end

def delete_all(arr, val)
  # delete all the elements of the array where element = val
  arr.delete(val)
end

def select_arr(arr)
  # select and return all odd numbers from the Array variable `arr`
  arr.select {|a| a % 2  == 0}
end
arr = [3, 4, 2, 1, 2, 3, 4, 5, 6, -1]
p select_arr(arr)

def reject_arr(arr)
 arr.reject { |a| a % 3 != 0}
end
p reject_arr(arr)

def delete_arr(arr)
  # delete all negative elements
  arr.delete_if { |a| a < 0 }
end
p delete_arr(arr)

def keep_arr(arr)
  # keep all non negative elements ( >= 0)
  arr.keep_if { |a| a >= 0 }
end
p keep_arr(arr)