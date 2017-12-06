require "pry"
def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data[:color].values.flatten.each{|name|
    if !new_hash[name]
      new_hash[name] = {}
    end
    }
  new_hash.keys.each {|name|
    data.keys.each{|key|
      if !new_hash[name][key]
        new_hash[name][key] = []
      end
      data[key].keys.each{|inner_key|
        if data[key][inner_key].include?(name)
          new_hash[name][key] << inner_key.to_s
        end
      }
    }
  }
  new_hash
end
