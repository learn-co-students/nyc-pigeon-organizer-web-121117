require 'pry'

def nyc_pigeon_organizer(data)
  hash = Hash.new
  data.each_with_index do |stats, i|
    stats[1].each_with_index do |specificStat, j|
      specificStat[1].each do |name|
          if !hash.keys.include?(name)
            hash[name] = {data.keys[i] => [stats[1].keys[j].to_s]}
          elsif !hash[name].keys.include?(stats[0])
            hash[name][data.keys[i]] = [stats[1].keys[j].to_s]
          elsif hash.keys.include?(name)
            hash[name][stats[i]] << stats[1].keys[j].to_s
        end
      end
    end
  end
return hash
end
