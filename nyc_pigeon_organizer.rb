def nyc_pigeon_organizer(data)
  result = {}
  data.each do |property, info|
    info.each do |detail, names|
      names.each do |name|
        if !result.include?(name)
          result[name] = {}
        end
        if !result[name].include?(property)
          result[name][property] = []
        end
        result[name][property] << detail.to_s
      end
    end
  end
  result
end