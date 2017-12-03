require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |category, category_data|
    category_data.each do |attribute, pigeons| #creates containers
      pigeons.each do |pigeon|
        if pigeon_list.keys.include?(pigeon)
          #bad code here?
        else
          pigeon_list[pigeon] = {}
        end
      end
    end
    pigeon_list.each do |pigeon, pigeon_data| #inserts data
      pigeon_data.merge!(category => [])   #add color,gender,lives
      category_data.each do |attribute, pigeons|
        if pigeons.include?(pigeon)
          pigeon_data[category] << attribute.to_s
        end
      end
    end
    #binding.pry
  end
  pigeon_list
end
