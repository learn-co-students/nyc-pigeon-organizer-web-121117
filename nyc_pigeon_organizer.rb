def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.map {|trait, set| set.map { |attr,names| names.map { |name| pigeon_list[name] = {} } } }
  data.map do |trait, set|
    set.map do|attr, names|
    names.each do |name|
      pigeon_list[name][trait] ||= []
      pigeon_list[name][trait] << attr.to_s
      end
    end
  end
  pigeon_list
end
