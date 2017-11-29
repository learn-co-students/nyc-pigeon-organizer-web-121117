def nyc_pigeon_organizer(data)
  pigeons = {}

  data.collect do |att, info|
    info.collect do |type, names|
      names.each do |bird|
        if !pigeons.include?(bird)
          pigeons[bird] = {}
        end
        if !pigeons[bird].include?(att)
          pigeons[bird][att] = []
        end
        pigeons[bird][att] << type.to_s
      end
    end
  end
  pigeons
end
