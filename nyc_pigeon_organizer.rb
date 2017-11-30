def nyc_pigeon_organizer(data)
    pigeons = {}
    
    data.collect do |attribute, info|
        info.collect do |type, names|
            names.each do |bird|
                if !pigeons.include?(bird)
                    pigeons[bird] = {}
                end
                if !pigeons[bird].include?(attribute)
                    pigeons[bird][attribute] = []
                end
                pigeons[bird][attribute] << type.to_s
            end
        end
    end
    pigeons
end
