require "pry"

def nyc_pigeon_organizer(data)
pigeon_list = {}
  data.each do |asl, specs_hash|
    specs_hash.each do |specs_symbol, array_data|
       array_data.each do |name|
        pigeon_list[name] ||= {}
        pigeon_list[name][asl] ||= []
        pigeon_list[name][asl] << specs_symbol.to_s
      end
    end
  end
  pigeon_list
end
