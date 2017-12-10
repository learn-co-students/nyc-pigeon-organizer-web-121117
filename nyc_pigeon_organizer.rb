def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |category, values|
    values.each do |value, names|
      names.each do |name|
        if pigeon_list.include?(name)
          if pigeon_list[name].include?(category)
            pigeon_list[name][category] << value.to_s
          else
            pigeon_list[name][category] = []
            pigeon_list[name][category] << value.to_s
          end
        else
          pigeon_list[name] = {}
          pigeon_list[name][category] = []
          pigeon_list[name][category] << value.to_s
        end
      end
    end
  end
  pigeon_list
end
