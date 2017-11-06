def nyc_pigeon_organizer(data)
  # write your code here!
  def nyc_pigeon_data(hash)
  new_data = {}
  keys = hash.keys
  
  #find pigeon names
  pigeon_names = []
  hash.each do |char, what|
    what.each do |type, pigeons|
      pigeon_names.push(pigeons)
    end
  end
  
  pigeon_names = pigeon_names.flatten.uniq

  #start the new_data hash
  pigeon_names.each do |name|
    new_data[name] = {}
  end
  
  #push the stuff into each
  pigeon_names.each do |name|
    hash.each do |char, what|
     what.each do |type, pigeons|
       pigeons.each do |who|
          if name == who && !new_data[name][char]
            new_type = type.to_s
            new_data[name][char] = [new_type]
          elsif name == who
            new_data[name][char] << type.to_s
          end
        end
      end
    end
  end
  
  new_data
       
      


end

  
  
end