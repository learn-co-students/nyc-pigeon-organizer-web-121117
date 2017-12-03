require 'pry'

def nyc_pigeon_organizer(data)
new_hash={}
  data.each do |category,detail|
    detail.each do |key,value|
      value.each do |name|

        if !new_hash[name]
        new_hash [name] = {:color => [key.to_s], :gender => [], :lives => []}
        else
          if category == :color
            new_hash [name][:color] << key.to_s
          elsif category == :gender
            new_hash [name][:gender] << key.to_s
          else
            new_hash [name][:lives] << key
          end
        end
      end
    end
  end
new_hash
end
