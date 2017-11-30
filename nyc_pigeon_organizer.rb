require "pry"
def nyc_pigeon_organizer(data)
  new_hash = Hash.new(0)
  attributes = []

  # creates a hash that includes all the birds names
  data.each do |key,value|
    attributes << key
    value.each do |key,value|
      value.each do |x|
        new_hash[x] = {}
      end
    end
  end

  # adds the three quialities to each of the birds and sets them equal to empty arrays
  attributes.each do |x|
    new_hash.each do |key,value|
      new_hash[key][x] = []
    end
  end

  # populates the empty arrays with the appropriate information for each bird
  new_hash.each do |names,qualities|
    qualities.each do |key,value|
      data[key].each do |x,y|
        if y.include?(names)
          value << x.to_s
        end
      end
    end
  end
  new_hash
end
