puts "Seed file is running..."

#Users




#Trails

rattlesnake = Trail.create!(name: "Rattlesnake Ledge", location: "North Bend", intensity: "Easy", length: 4.0, elevation_gain: 1160, highest_point: 2078 )
mailbox = Trail.create!(name: "Mailbox Peak", location: "North Bend", intensity: "Hard", length: 9.4, elevation_gain: 4000, highest_point: 4841 )
lake22 = Trail.create!(name: "Lake 22", location: "Granite Falls", intensity: "Moderate", length: 5.4, elevation_gain: 1350, highest_point: 2400 )
poo = Trail.create!(name: "Poo Poo Point", location: "Issaquah", intensity: "Moderate", length: 7.2, elevation_gain: 1858, highest_point: 1858 )
tiger = Trail.create!(name: "Tiger Mountain", location: "Issaquah", intensity: "Moderate", length: 15.0, elevation_gain: 3000, highest_point: 3000 )
snoqualmie = Trail.create!(name: "Snoqualmie Falls", location: "Snoqualmie", intensity: "Easy", length: 1.4, elevation_gain: 250, highest_point: 250 )
hidden = Trail.create!(name: "Hidden Lake Lookout", location: "North Cascades", intensity: "Hard", length: 8.0, elevation_gain: 3300, highest_point: 6890 )
sauk = Trail.create!(name: "Sauk Mountain", location: "North Cascades", intensity: "Moderate", length: 2.0, elevation_gain: 1200, highest_point: 5541 )

#Reports


puts "Seed file is done!"

