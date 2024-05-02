# Seed file to update trail objects with latitude and longitude values

# Define latitude and longitude values for each trail
trail_coordinates = {
  "Ancient Lakes" => [47.1520124030013, -119.92236540307894],
  "Blanca Lake" => [47.915571449109684, -121.31245020303457],
  "Snow Lake" => [47.44554928758589, -121.42338724538997],
  "Lake 22" => [48.0773920216766, -121.74579324535317],
  "Annette Lake" => [47.39290030658796, -121.47400350306496],
  "Fremont Lookout" => [46.91490615504364, -121.64225607568336],
  "Gothic Basin" => [48.025856576026435, -121.4436688165202],
  "Hidden Lake Lookout" => [48.51456233039992, -121.22156430689013],
  "Mailbox Peak" => [47.4666301886083, -121.67379780306071],
  "Lake Serene" => [47.80914114847233, -121.57378264536881],
  "Lake Ingalls" => [47.43676884144059, -120.9367833030624],
  "Mount Storm King" => [48.054251439746324, -123.79015042181132],
  "Park Butte" => [48.7067607830928, -121.81241138146112],
  "Rachel Lake" => [47.40102750052742, -121.28353410306445],
  "Cutthroat Pass" => [48.51825842396572, -120.73304673183523],
  "Colchuck Lake" => [47.52789481567759, -120.82098927422113],
  "Boulder River" => [48.25051240009006, -121.81582957417888],
  "Bandera Mountain" => [47.4248120992485, -121.58341044539115],
  "Beckler Peak" => [47.72454064366366, -121.26663720304582],
  "Blue Lake" => [48.519045442521865, -120.67434114532716],
  "Goat Lake" => [46.46700929198618, -121.5276913806925],
  "Index Town Wall" => [47.817668105871626, -121.57130974536832],
  "Maple Pass Loop" => [48.51513964151984, -120.73581293183545],
  "Melakwa Lake" => [47.41539043100813, -121.44340574539173],
  "Mount Pilchuck" => [48.070203994235925, -121.8146498741896],
  "Mount Si" => [47.488087196530586, -121.72315319179394],
  "Poo Poo Point" => [47.500072147288996, -122.02196897422287],
  "Mason Lake" => [47.424848392588316, -121.58343190306313],
  "Rattlesnake Ledge" => [47.43477271611847, -121.76871907422662],
  "Monte Cristo Ghost Town" => [48.025839548223736, -121.44339527419224],
  "Naches Peak Loop" => [46.86732109359182, -121.51821231658737],
  "Oyster Dome" => [48.60980163369502, -122.42638790299385],
  "Twin Falls" => [47.45302420944314, -121.70543790306144],
  "The Enchantments" => [47.52789481567759, -120.8210107318931],
  "Snow Lakes" => [47.544133708826436, -120.70965680305623],
  "Hannegan Pass" => [48.91028417987608, -121.59196537414013],
  "Mount Washington" => [47.51898255389135, -123.23699987422158]
}

# Update trail objects with latitude and longitude values
trail_coordinates.each do |trail_name, coordinates|
  trail = Trail.find_by(name: trail_name)
  trail.update!(latitude: coordinates[0], longitude: coordinates[1])
end

puts "Trail coordinates updated successfully!"

