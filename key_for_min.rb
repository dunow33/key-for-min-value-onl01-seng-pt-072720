# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash.length == 0
    return nil
  end
  
  min = 0
  correct_key = ""
  counter = 1
  name_hash.each do | key, value |
    if counter == 1
      if min != value
        min = value
        counter += 1
        correct_key = key
      end
    else
      if value < min
        min = value
        correct_key = key
      end
    end
  end
  
  correct_key
end