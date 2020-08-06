# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  small = 0
  
  name_hash.each do | key, value |
    if value 
    if value < small
      small = value
      puts value
    end
  end
  
  return nil
end

hash = {:blake => 500, :ashley => 2, :adam => 1}

puts key_for_min_value(hash)