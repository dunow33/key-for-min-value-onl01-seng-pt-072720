# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash.length == 0
    return nil
  end
  
  small = 0
  correct_key = ""
  counter = 1
  name_hash.each do | key, value |
    if counter == 1
      if small != value
        small = value
        counter += 1
      end
    else
      if value < small
        small = value
        correct_key = key
      end
    end
  end
  
  correct_key
end

#hash = {:blake => 500, :ashley => 2, :adam => 1}

#puts key_for_min_value(hash)