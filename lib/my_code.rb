# Your Code Here

def map(array)
  new = []
  i = 0
  while i < array.length do
    new.push(yield(array[i]))
    i += 1
  end
  return new
end

def reduce(array, starting_point = nil)
  if starting_point 
    total = starting_point
    i = 0
  else
    total = array[0]
    i = 1
  end
  while i < array.length 
    total = yield(total, array[i])
    i += 1
  end
  total
end  

"returns a running total when not given a starting point"
#source_array = [1,2,3]
#reduce(source_array){|memo, n| memo + n}

"returns a running total when given a starting point"
#source_array = [1,2,3]
#starting_point = 100
#reduce(source_array, starting_point){|memo, n| memo + n}

"returns true when all values are truthy"
#source_array = [1, 2, true, "razmatazz"]
#reduce(source_array){|memo, n| memo && n}

"returns false when any value is false"
#source_array = [1, 2, true, "razmatazz", false]
#reduce(source_array){|memo, n| memo && n}

"returns true when a truthy value is present"
#source_array = [ false, nil, nil, nil, true]
#reduce(source_array){|memo, n| memo || n}

"returns false when no truthy value is present"s
#source_array = [ false, nil, nil, nil]
#reduce(source_array){|memo, n| memo && n}