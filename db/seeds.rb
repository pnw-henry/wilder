puts "Seed file is running..."

#Users

henry = User.create!(
    name: "Henry Escobar",
    username: "henry",
    password_digest: BCrypt::Password.create("henryhikes")
)


#Trails

# Detailed trail descriptions
blanca_lake = Trail.create!(
  name: "Blanca Lake",
  location: "Skykomish, WA",
  intensity: "Hard",
  length: 7.5,
  elevation_gain: 3300,
  highest_point: 4500,
  summary: "Embark on a challenging journey along the Blanca Lake Trail, a 7.5-mile round trip adventure near Skykomish, Washington. This strenuous trail leads hikers through dense forests, rocky slopes, and alpine meadows, offering breathtaking views of the turquoise waters of Blanca Lake and the rugged peaks of the Cascade Range. With an elevation gain of 3300 feet, this trail is best suited for experienced hikers and is recommended from June until October."
)

snow_lake = Trail.create!(
  name: "Snow Lake",
  location: "Snoqualmie Pass, WA",
  intensity: "Moderate",
  length: 7.2,
  elevation_gain: 1800,
  highest_point: 4400,
  summary: "Explore the beauty of the Snow Lake Trail, a 7.2-mile round trip hike near Snoqualmie Pass, Washington. This moderate trail winds through evergreen forests and rocky terrain, offering stunning views of cascading waterfalls and the crystal-clear waters of Snow Lake. With an elevation gain of 1800 feet, this trail is suitable for intermediate hikers and is best enjoyed from June until October."
)

lake_22 = Trail.create!(
  name: "Lake 22",
  location: "Granite Falls, WA",
  intensity: "Moderate",
  length: 5.4,
  elevation_gain: 1350,
  highest_point: 2400,
  summary: "Experience the tranquility of the Lake 22 Trail, a 5.4-mile round trip hike near Granite Falls, Washington. This moderate trail meanders through old-growth forests, alongside babbling brooks, and past scenic waterfalls before reaching the pristine shores of Lake 22, nestled beneath towering peaks. With an elevation gain of 1350 feet, this trail is suitable for hikers of all levels and is best enjoyed from June until November."
)

annette_lake = Trail.create!(
  name: "Annette Lake",
  location: "North Bend, WA",
  intensity: "Moderate",
  length: 7.5,
  elevation_gain: 1800,
  highest_point: 3600,
  summary: "Discover the beauty of Annette Lake Trail, a 7.5-mile round trip hike near North Bend, Washington. This scenic trail winds through lush forests and alpine meadows, offering panoramic views of the surrounding mountains and valleys. With an elevation gain of 1800 feet, this moderate trail is ideal for hikers looking for a rewarding adventure and is best enjoyed from June until October."
)

fremont_lookout = Trail.create!(
  name: "Fremont Lookout",
  location: "Greenwater, WA",
  intensity: "Moderate",
  length: 5.6,
  elevation_gain: 800,
  highest_point: 5900,
  summary: "Ascend to the summit of Fremont Lookout along this 5.6-mile round trip hike near Greenwater, Washington. This moderate trail boasts stunning views of Mount Rainier and the surrounding wilderness as it winds through subalpine meadows and ancient forests. With an elevation gain of 800 feet, this trail is suitable for hikers of all levels and is best enjoyed from July until October."
)

gothic_basin = Trail.create!(
  name: "Gothic Basin",
  location: "Verlot, WA",
  intensity: "Hard",
  length: 9.5,
  elevation_gain: 2800,
  highest_point: 5400,
  summary: "Conquer the rugged terrain of Gothic Basin Trail, a challenging 9.5-mile round trip hike near Verlot, Washington. This strenuous trail leads adventurers through dense forests and alpine meadows to the breathtaking Gothic Basin, home to pristine alpine lakes and towering peaks. With an elevation gain of 2800 feet, this trail is best suited for experienced hikers and is recommended from July until October."
)

hidden_lake = Trail.create!(
  name: "Hidden Lake Lookout",
  location: "Marblemount, WA",
  intensity: "Hard",
  length: 8.0,
  elevation_gain: 3300,
  highest_point: 6900,
  summary: "Embark on an epic adventure along the Hidden Lake Lookout Trail, an 8-mile round trip hike near Marblemount, Washington. This challenging trail leads hikers through rugged terrain and steep switchbacks to the historic Hidden Lake Lookout, offering panoramic views of the surrounding North Cascades. With an elevation gain of 3300 feet, this trail is best suited for experienced hikers and is recommended from July until October."
)

mailbox_peak = Trail.create!(
  name: "Mailbox Peak",
  location: "North Bend, WA",
  intensity: "Hard",
  length: 9.4,
  elevation_gain: 4000,
  highest_point: 4822,
  summary: "Summit Mailbox Peak along this demanding 9.4-mile round trip hike near North Bend, Washington. This strenuous trail features steep switchbacks and rocky terrain as it ascends to the summit, offering panoramic views of the surrounding mountains and valleys. With an elevation gain of 4000 feet, this trail is best suited for experienced hikers and is recommended from April until October."
)

lake_serene = Trail.create!(
  name: "Lake Serene",
  location: "Gold Bar, WA",
  intensity: "Hard",
  length: 8.2,
  elevation_gain: 2000,
  highest_point: 2521,
  summary: "Experience the beauty of Lake Serene Trail, an 8.2-mile round trip hike near Gold Bar, Washington. This challenging trail leads hikers through lush forests and alongside cascading waterfalls to the pristine shores of Lake Serene, nestled beneath towering cliffs. With an elevation gain of 2000 feet, this trail is best suited for experienced hikers and is recommended from June until October."
)

lake_ingalls = Trail.create!(
  name: "Lake Ingalls",
  location: "Cle Elum, WA",
  intensity: "Hard",
  length: 9.0,
  elevation_gain: 2500,
  highest_point: 6800,
  summary: "Conquer the rugged terrain of Lake Ingalls Trail, a challenging 9-mile round trip hike near Cle Elum, Washington. This strenuous trail leads adventurers through alpine meadows and rocky slopes to the pristine shores of Lake Ingalls, offering breathtaking views of the surrounding mountains and valleys. With an elevation gain of 2500 feet, this trail is best suited for experienced hikers and is recommended from June until October."
)

mount_storm_king = Trail.create!(
  name: "Mount Storm King",
  location: "Port Angeles, WA",
  intensity: "Hard",
  length: 3.8,
  elevation_gain: 2100,
  highest_point: 4500,
  summary: "Embark on a thrilling adventure along Mount Storm King Trail, a challenging 3.8-mile round trip hike near Port Angeles, Washington. This strenuous trail leads hikers through dense forests and rocky slopes to the summit of Mount Storm King, offering panoramic views of Lake Crescent and the surrounding Olympic Mountains. With an elevation gain of 2100 feet, this trail is best suited for experienced hikers and is recommended from June until October."
)

park_butte = Trail.create!(
  name: "Park Butte",
  location: "Glacier, WA",
  intensity: "Moderate",
  length: 7.0,
  elevation_gain: 2200,
  highest_point: 5400,
  summary: "Discover the beauty of Park Butte Trail, a 7-mile round trip hike near Glacier, Washington. This moderate trail winds through alpine meadows and alongside cascading streams to the historic Park Butte Lookout, offering panoramic views of Mount Baker and the surrounding North Cascades. With an elevation gain of 2200 feet, this trail is suitable for hikers of all levels and is best enjoyed from July until October."
)

rachel_lake = Trail.create!(
  name: "Rachel Lake",
  location: "Snoqualmie Pass, WA",
  intensity: "Moderate",
  length: 8.0,
  elevation_gain: 1600,
  highest_point: 4600,
  summary: "Embark on a scenic adventure along Rachel Lake Trail, an 8-mile round trip hike near Snoqualmie Pass, Washington. This moderate trail winds through dense forests and alongside cascading streams to the serene shores of Rachel Lake, offering breathtaking views of the surrounding mountains. With an elevation gain of 1600 feet, this trail is suitable for hikers of all levels and is best enjoyed from June until October."
)

cutthroat_pass = Trail.create!(
  name: "Cutthroat Pass",
  location: "Winthrop, WA",
  intensity: "Moderate",
  length: 7.0,
  elevation_gain: 2000,
  highest_point: 7000,
  summary: "Embark on a scenic journey along Cutthroat Pass Trail, a 7-mile round trip hike near Winthrop, Washington. This moderate trail leads hikers through alpine meadows and alongside pristine lakes, offering panoramic views of the surrounding mountains and valleys. With an elevation gain of 2000 feet, this trail is suitable for hikers of all levels and is best enjoyed from July until October."
)

colchuck_lake = Trail.create!(
  name: "Colchuck Lake",
  location: "Leavenworth, WA",
  intensity: "Hard",
  length: 8.0,
  elevation_gain: 2280,
  highest_point: 5600,
  summary: "Conquer the rugged terrain of Colchuck Lake Trail, an 8-mile round trip hike near Leavenworth, Washington. This challenging trail leads adventurers through dense forests and across boulder-strewn slopes to the pristine shores of Colchuck Lake, offering breathtaking views of Dragontail Peak and the surrounding Enchantment Lakes. With an elevation gain of 2280 feet, this trail is best suited for experienced hikers and is recommended from June until October."
)

boulder_river = Trail.create!(
  name: "Boulder River",
  location: "Arlington, WA",
  intensity: "Easy",
  length: 8.6,
  elevation_gain: 700,
  highest_point: 700,
  summary: "Embark on a peaceful journey along Boulder River Trail, an 8.6-mile round trip hike near Arlington, Washington. This easy trail follows the scenic Boulder River through lush forests and past picturesque waterfalls, offering hikers a chance to immerse themselves in the tranquil beauty of the Pacific Northwest wilderness. With minimal elevation gain, this trail is suitable for hikers of all ages and abilities and is best enjoyed from April until October."
)

ancient_lakes = Trail.create!(
  name: "Ancient Lakes",
  location: "Quincy, WA",
  intensity: "Easy",
  length: 9.0,
  elevation_gain: 300,
  highest_point: 1000,
  summary: "Discover the beauty of Ancient Lakes Trail, a 9-mile round trip hike near Quincy, Washington. This easy trail winds through the scenic Columbia River Gorge, passing by towering cliffs, sparkling lakes, and lush desert landscapes. With minimal elevation gain, this trail is suitable for hikers of all levels and is best enjoyed from April until October."
)

bandera_mountain = Trail.create!(
  name: "Bandera Mountain",
  location: "North Bend, WA",
  intensity: "Hard",
  length: 8.0,
  elevation_gain: 3400,
  highest_point: 5240,
  summary: "Summit Bandera Mountain along this challenging 8-mile round trip hike near North Bend, Washington. This strenuous trail leads hikers through dense forests and rocky slopes to the summit of Bandera Mountain, offering panoramic views of the surrounding Cascade Range. With an elevation gain of 3400 feet, this trail is best suited for experienced hikers and is recommended from June until October."
)

Beckler_Peak = Trail.create!(
  name: "Beckler Peak",
  location: "Skykomish, WA",
  intensity: "Moderate",
  length: 7.0,
  elevation_gain: 1700,
  highest_point: 5062,
  summary: "Embark on a scenic adventure along Beckler Peak Trail, a 7-mile round trip hike near Skykomish, Washington. This moderate trail winds through dense forests and alpine meadows to the summit of Beckler Peak, offering panoramic views of the surrounding mountains and valleys. With an elevation gain of 1700 feet, this trail is suitable for hikers of all levels and is best enjoyed from June until October."
)

blue_lake = Trail.create!(
  name: "Blue Lake",
  location: "North Cascades, WA",
  intensity: "Moderate",
  length: 4.0,
  elevation_gain: 1050,
  highest_point: 5400,
  summary: "Discover the beauty of Blue Lake Trail, a 4-mile round trip hike near North Cascades, Washington. This moderate trail leads hikers through alpine meadows and past pristine lakes, offering breathtaking views of the surrounding mountains and valleys. With an elevation gain of 1050 feet, this trail is suitable for hikers of all levels and is best enjoyed from July until October."
)

goat_lake = Trail.create!(
  name: "Goat Lake",
  location: "Randle, WA",
  intensity: "Moderate",
  length: 10.0,
  elevation_gain: 1400,
  highest_point: 3200,
  summary: "Embark on a scenic journey along Goat Lake Trail, a 10-mile round trip hike near Randle, Washington. This moderate trail winds through lush forests and alongside cascading streams to the pristine shores of Goat Lake, nestled beneath towering peaks. With an elevation gain of 1400 feet, this trail is suitable for hikers of all levels and is best enjoyed from June until October."
)

index_town_wall = Trail.create!(
  name: "Index Town Wall",
  location: "Index, WA",
  intensity: "Hard",
  length: 2.0,
  elevation_gain: 500,
  highest_point: 1200,
  summary: "Conquer the rugged terrain of Index Town Wall Trail, a challenging 2-mile round trip hike near Index, Washington. This strenuous trail leads climbers through steep switchbacks and rocky slopes to the iconic Index Town Wall, offering breathtaking views of the surrounding Skykomish River Valley. With an elevation gain of 500 feet, this trail is best suited for experienced climbers and is recommended from April until October."
)

maple_pass_loop = Trail.create!(
  name: "Maple Pass Loop",
  location: "Winthrop, WA",
  intensity: "Moderate",
  length: 7.0,
  elevation_gain: 2000,
  highest_point: 6700,
  summary: "Embark on a scenic adventure along Maple Pass Loop Trail, a 7-mile round trip hike near Winthrop, Washington. This moderate trail winds through alpine meadows and past pristine lakes, offering panoramic views of the surrounding mountains and valleys. With an elevation gain of 2000 feet, this trail is suitable for hikers of all levels and is best enjoyed from July until October."
)

melakwa_lake = Trail.create!(
  name: "Melakwa Lake",
  location: "North Bend, WA",
  intensity: "Hard",
  length: 8.0,
  elevation_gain: 2500,
  highest_point: 4600,
  summary: "Discover the beauty of Melakwa Lake Trail, an 8-mile round trip hike near North Bend, Washington. This challenging trail winds through dense forests and rocky slopes to the pristine shores of Melakwa Lake, nestled beneath towering peaks. With an elevation gain of 2500 feet, this trail is best suited for experienced hikers and is recommended from June until October."
)

mount_pilchuck = Trail.create!(
  name: "Mount Pilchuck",
  location: "Granite Falls, WA",
  intensity: "Hard",
  length: 5.4,
  elevation_gain: 2300,
  highest_point: 5324,
  summary: "Summit Mount Pilchuck along this challenging 5.4-mile round trip hike near Granite Falls, Washington. This strenuous trail features steep switchbacks and rocky terrain as it ascends to the historic Mount Pilchuck Lookout, offering panoramic views of the surrounding mountains and valleys. With an elevation gain of 2300 feet, this trail is best suited for experienced hikers and is recommended from July until October."
)

mount_si = Trail.create!(
  name: "Mount Si",
  location: "North Bend, WA",
  intensity: "Hard",
  length: 8.0,
  elevation_gain: 3150,
  highest_point: 4167,
  summary: "Conquer the rugged terrain of Mount Si Trail, an 8-mile round trip hike near North Bend, Washington. This challenging trail leads hikers through dense forests and rocky slopes to the summit of Mount Si, offering panoramic views of the surrounding Cascade Range. With an elevation gain of 3150 feet, this trail is best suited for experienced hikers and is recommended from June until October."
)

poo_poo_point = Trail.create!(
  name: "Poo Poo Point",
  location: "Issaquah, WA",
  intensity: "Moderate",
  length: 7.2,
  elevation_gain: 1858,
  highest_point: 1858,
  summary: "Embark on a scenic adventure along Poo Poo Point Trail, a 7.2-mile round trip hike near Issaquah, Washington. This moderate trail winds through lush forests and alpine meadows to the iconic Poo Poo Point, offering panoramic views of the surrounding mountains and valleys. With an elevation gain of 1858 feet, this trail is suitable for hikers of all levels and is best enjoyed from June until October."
)

mason_lake = Trail.create!(
  name: "Mason Lake",
  location: "North Bend, WA",
  intensity: "Moderate",
  length: 6.5,
  elevation_gain: 2420,
  highest_point: 4200,
  summary: "Discover the beauty of Mason Lake Trail, a 6.5-mile round trip hike near North Bend, Washington. This moderate trail winds through dense forests and rocky slopes to the pristine shores of Mason Lake, nestled beneath towering peaks. With an elevation gain of 2420 feet, this trail is suitable for hikers of all levels and is best enjoyed from June until October."
)

rattlesnake_ledge = Trail.create!(
  name: "Rattlesnake Ledge",
  location: "North Bend, WA",
  intensity: "Moderate",
  length: 4.0,
  elevation_gain: 1160,
  highest_point: 2078,
  summary: "Embark on a scenic journey along Rattlesnake Ledge Trail, a 4-mile round trip hike near North Bend, Washington. This moderate trail winds through lush forests and rocky slopes to the iconic Rattlesnake Ledge, offering panoramic views of Rattlesnake Lake and the surrounding Cascade Range. With an elevation gain of 1160 feet, this trail is suitable for hikers of all levels and is best enjoyed from June until October."
)

monte_cristo_ghost_town = Trail.create!(
  name: "Monte Cristo Ghost Town",
  location: "Granite Falls, WA",
  intensity: "Moderate",
  length: 8.0,
  elevation_gain: 700,
  highest_point: 700,
  summary: "Discover the history of Monte Cristo Ghost Town Trail, an 8-mile round trip hike near Granite Falls, Washington. This moderate trail winds through lush forests and past historic mining sites to the abandoned Monte Cristo Ghost Town, offering hikers a glimpse into the past. With minimal elevation gain, this trail is suitable for hikers of all levels and is best enjoyed from June until October."
)

naches_peak_loop = Trail.create!(
  name: "Naches Peak Loop",
  location: "Enumclaw, WA",
  intensity: "Moderate",
  length: 3.5,
  elevation_gain: 600,
  highest_point: 5900,
  summary: "Embark on a scenic adventure along Naches Peak Loop Trail, a 3.5-mile round trip hike near Enumclaw, Washington. This moderate trail winds through alpine meadows and past pristine lakes, offering panoramic views of the surrounding mountains and valleys. With an elevation gain of 600 feet, this trail is suitable for hikers of all levels and is best enjoyed from July until October."
)

oyster_dome = Trail.create!(
  name: "Oyster Dome",
  location: "Bow, WA",
  intensity: "Moderate",
  length: 6.5,
  elevation_gain: 1900,
  highest_point: 2100,
  summary: "Embark on a scenic journey along Oyster Dome Trail, a 6.5-mile round trip hike near Bow, Washington. This moderate trail winds through lush forests and rocky slopes to the iconic Oyster Dome, offering panoramic views of the surrounding San Juan Islands and Puget Sound. With an elevation gain of 1900 feet, this trail is suitable for hikers of all levels and is best enjoyed from June until October."
)

twin_falls = Trail.create!(
  name: "Twin Falls",
  location: "North Bend, WA",
  intensity: "Easy",
  length: 2.6,
  elevation_gain: 500,
  highest_point: 500,
  summary: "Embark on a peaceful journey along Twin Falls Trail, a 2.6-mile round trip hike near North Bend, Washington. This easy trail follows the scenic South Fork Snoqualmie River through lush forests and past picturesque waterfalls, offering hikers a chance to immerse themselves in the tranquil beauty of the Pacific Northwest wilderness. With minimal elevation gain, this trail is suitable for hikers of all ages and abilities and is best enjoyed from April until October."
)

the_enchantments = Trail.create!(
  name: "The Enchantments",
  location: "Leavenworth, WA",
  intensity: "Hard",
  length: 18.0,
  elevation_gain: 4500,
  highest_point: 7800,
  summary: "Conquer the rugged terrain of The Enchantments Trail, an epic 18-mile round trip hike near Leavenworth, Washington. This challenging trail leads adventurers through alpine meadows, past pristine lakes, and across boulder-strewn slopes to the iconic Enchantment Lakes Basin, offering breathtaking views of Dragontail Peak and the surrounding Cascade Range. With an elevation gain of 4500 feet, this trail is best suited for experienced hikers and is recommended from July until October."
)

snow_lakes = Trail.create!(
  name: "Snow Lakes",
  location: "Leavenworth, WA",
  intensity: "Hard",
  length: 12.0,
  elevation_gain: 3000,
  highest_point: 6000,
  summary: "Embark on an epic adventure along Snow Lakes Trail, a challenging 12-mile round trip hike near Leavenworth, Washington. This strenuous trail leads hikers through dense forests, across boulder fields, and past cascading waterfalls to the pristine shores of Snow Lakes, nestled beneath towering peaks. With an elevation gain of 3000 feet, this trail is best suited for experienced hikers and is recommended from July until October."
)

hannegan_pass = Trail.create!(
  name: "Hannegan Pass",
  location: "Glacier, WA",
  intensity: "Moderate",
  length: 6.0,
  elevation_gain: 1600,
  highest_point: 5000,
  summary: "Discover the beauty of Hannegan Pass Trail, a 6-mile round trip hike near Glacier, Washington. This moderate trail winds through lush forests and alpine meadows to the scenic Hannegan Pass, offering panoramic views of the surrounding North Cascades. With an elevation gain of 1600 feet, this trail is suitable for hikers of all levels and is best enjoyed from July until October."
)



#Reports

# User reports seed data for all trails
Report.create!(
  date: Date.new(2023, 3, 15),
  road_condition: "Clear",
  trail_condition: "Muddy",
  snow: false,
  bugs: true,
  summary: "Great hike, but trail was muddy in some areas. Bugs were quite bothersome near the lake.",
  user_id: henry.id,
  trail_id: blanca_lake.id
)

Report.create!(
  date: Date.new(2023, 3, 20),
  road_condition: "Snowy",
  trail_condition: "Icy",
  snow: true,
  bugs: false,
  summary: "Trail was covered in snow, needed snowshoes. Icy patches made it tricky in some areas.",
  user_id: henry.id,
  trail_id: snow_lake.id
)

Report.create!(
  date: Date.new(2023, 3, 25),
  road_condition: "Clear",
  trail_condition: "Dry",
  snow: false,
  bugs: false,
  summary: "Perfect conditions. Trail was dry and clear. Enjoyed the hike thoroughly.",
  user_id: henry.id,
  trail_id: lake_22.id
)

Report.create!(
  date: Date.new(2023, 4, henry.id),
  road_condition: "Wet",
  trail_condition: "Rocky",
  snow: false,
  bugs: true,
  summary: "Trail was wet due to recent rain. Some rocky sections were a bit challenging.",
  user_id: henry.id,
  trail_id: annette_lake.id
)

Report.create!(
  date: Date.new(2023, 4, 5),
  road_condition: "Clear",
  trail_condition: "Clear",
  snow: false,
  bugs: false,
  summary: "No issues on the trail. Clear weather and clear trail made for a pleasant hike.",
  user_id: henry.id,
  trail_id: fremont_lookout.id
)

Report.create!(
  date: Date.new(2023, 4, 10),
  road_condition: "Clear",
  trail_condition: "Snowy",
  snow: true,
  bugs: false,
  summary: "Snowy conditions on the trail. Some parts required caution due to ice.",
  user_id: henry.id,
  trail_id: gothic_basin.id
)

Report.create!(
  date: Date.new(2023, 4, 15),
  road_condition: "Clear",
  trail_condition: "Snowy",
  snow: true,
  bugs: false,
  summary: "Beautiful trail but snow made some parts challenging. Stunning views at the basin.",
  user_id: henry.id,
  trail_id: hidden_lake.id
)

Report.create!(
  date: Date.new(2023, 4, 20),
  road_condition: "Clear",
  trail_condition: "Clear",
  snow: false,
  bugs: false,
  summary: "Stunning views from the summit. Hike was tough but worth it for the scenery.",
  user_id: henry.id,
  trail_id: mailbox_peak.id
)

Report.create!(
  date: Date.new(2023, 4, 25),
  road_condition: "Clear",
  trail_condition: "Clear",
  snow: false,
  bugs: false,
  summary: "Trail in great condition. Wildflowers in bloom added to the beauty of the hike.",
  user_id: henry.id,
  trail_id: lake_serene.id
)

Report.create!(
  date: Date.new(2023, 5, henry.id),
  road_condition: "Clear",
  trail_condition: "Snowy",
  snow: true,
  bugs: false,
  summary: "Trail was snowy but manageable. Views of the lake were breathtaking.",
  user_id: henry.id,
  trail_id: lake_ingalls.id
)

Report.create!(
  date: Date.new(2023, 5, 5),
  road_condition: "Clear",
  trail_condition: "Clear",
  snow: false,
  bugs: false,
  summary: "Moderate hike with rewarding views. Weather was perfect for hiking.",
  user_id: henry.id,
  trail_id: mount_storm_king.id
)

Report.create!(
  date: Date.new(2023, 5, 10),
  road_condition: "Clear",
  trail_condition: "Clear",
  snow: false,
  bugs: false,
  summary: "Enjoyed the hike. Wildflowers were abundant along the trail.",
  user_id: henry.id,
  trail_id: park_butte.id
)

Report.create!(
  date: Date.new(2023, 5, 15),
  road_condition: "Clear",
  trail_condition: "Clear",
  snow: false,
  bugs: false,
  summary: "Trail was in excellent condition. Perfect weather for a hike.",
  user_id: henry.id,
  trail_id: rachel_lake.id
)

Report.create!(
  date: Date.new(2023, 5, 20),
  road_condition: "Clear",
  trail_condition: "Snowy",
  snow: true,
  bugs: false,
  summary: "Trail covered in snow. Snowshoes recommended, but the lake was stunning.",
  user_id: henry.id,
  trail_id: cutthroat_pass.id
)

Report.create!(
  date: Date.new(2023, 5, 25),
  road_condition: "Clear",
  trail_condition: "Clear",
  snow: false,
  bugs: false,
  summary: "Trail in great shape. Loved the views of the lake and surrounding peaks.",
  user_id: henry.id,
  trail_id: colchuck_lake.id
)

Report.create!(
  date: Date.new(2023, 6, henry.id),
  road_condition: "Clear",
  trail_condition: "Clear",
  snow: false,
  bugs: false,
  summary: "Easy trail with beautiful waterfall views. Great for beginners.",
  user_id: henry.id,
  trail_id: boulder_river.id
)

# Additional user reports for all trails
Report.create!(
  date: Date.new(2023, 6, 5),
  road_condition: "Clear",
  trail_condition: "Clear",
  snow: false,
  bugs: false,
  summary: "Trail was clear and dry. Wonderful hike with stunning lake views.",
  user_id: henry.id,
  trail_id: blanca_lake.id
)

Report.create!(
  date: Date.new(2023, 6, 10),
  road_condition: "Clear",
  trail_condition: "Clear",
  snow: false,
  bugs: false,
  summary: "Trail conditions were excellent. Enjoyed a peaceful hike to the lake.",
  user_id: henry.id,
  trail_id: snow_lake.id
)

Report.create!(
  date: Date.new(2023, 6, 15),
  road_condition: "Clear",
  trail_condition: "Clear",
  snow: false,
  bugs: false,
  summary: "Beautiful weather for hiking. Trail was well-maintained.",
  user_id: henry.id,
  trail_id: lake_22.id
)

Report.create!(
  date: Date.new(2023, 6, 20),
  road_condition: "Clear",
  trail_condition: "Clear",
  snow: false,
  bugs: false,
  summary: "Enjoyed a pleasant hike with clear trail conditions.",
  user_id: henry.id,
  trail_id: annette_lake.id
)

Report.create!(
  date: Date.new(2023, 6, 25),
  road_condition: "Clear",
  trail_condition: "Clear",
  snow: false,
  bugs: false,
  summary: "No issues on the trail. Great views from the lookout.",
  user_id: henry.id,
  trail_id: fremont_lookout.id
)

Report.create!(
  date: Date.new(2023, 7, henry.id),
  road_condition: "Clear",
  trail_condition: "Clear",
  snow: false,
  bugs: false,
  summary: "Trail was in good condition. Gorgeous views along the way.",
  user_id: henry.id,
  trail_id: gothic_basin.id
)

Report.create!(
  date: Date.new(2023, 7, 5),
  road_condition: "Clear",
  trail_condition: "Clear",
  snow: false,
  bugs: false,
  summary: "Challenging hike but worth it for the breathtaking lake views.",
  user_id: henry.id,
  trail_id: hidden_lake.id
)

Report.create!(
  date: Date.new(2023, 7, 10),
  road_condition: "Clear",
  trail_condition: "Clear",
  snow: false,
  bugs: false,
  summary: "Trail was clear and dry. Summit views were incredible.",
  user_id: henry.id,
  trail_id: mailbox_peak.id
)

Report.create!(
  date: Date.new(2023, 7, 15),
  road_condition: "Clear",
  trail_condition: "Clear",
  snow: false,
  bugs: false,
  summary: "Enjoyed a pleasant hike with stunning views of the lake.",
  user_id: henry.id,
  trail_id: lake_serene.id
)

Report.create!(
  date: Date.new(2023, 7, 20),
  road_condition: "Clear",
  trail_condition: "Clear",
  snow: false,
  bugs: false,
  summary: "Trail was clear and dry. Lake was serene and beautiful.",
  user_id: henry.id,
  trail_id: lake_ingalls.id
)

Report.create!(
  date: Date.new(2023, 7, 25),
  road_condition: "Clear",
  trail_condition: "Clear",
  snow: false,
  bugs: false,
  summary: "Beautiful hike with amazing views of the surrounding mountains.",
  user_id: henry.id,
  trail_id: mount_storm_king.id
)

Report.create!(
  date: Date.new(2023, 8, henry.id),
  road_condition: "Clear",
  trail_condition: "Clear",
  snow: false,
  bugs: false,
  summary: "Trail was well-marked and maintained. Enjoyed the wildflowers.",
  user_id: henry.id,
  trail_id: park_butte.id
)

Report.create!(
  date: Date.new(2023, 8, 5),
  road_condition: "Clear",
  trail_condition: "Clear",
  snow: false,
  bugs: false,
  summary: "Great hike with beautiful lake views. Weather was perfect.",
  user_id: henry.id,
  trail_id: rachel_lake.id
)

Report.create!(
  date: Date.new(2023, 8, 10),
  road_condition: "Clear",
  trail_condition: "Clear",
  snow: false,
  bugs: false,
  summary: "Trail conditions were excellent. Enjoyed a peaceful hike.",
  user_id: henry.id,
  trail_id: cutthroat_pass.id
)

Report.create!(
  date: Date.new(2023, 8, 15),
  road_condition: "Clear",
  trail_condition: "Clear",
  snow: false,
  bugs: false,
  summary: "Trail was clear and dry. Stunning views of the lake and mountains.",
  user_id: henry.id,
  trail_id: colchuck_lake.id
)

Report.create!(
  date: Date.new(2023, 8, 20),
  road_condition: "Clear",
  trail_condition: "Clear",
  snow: false,
  bugs: false,
  summary: "Easy trail with beautiful waterfall views. Perfect for a leisurely hike.",
  user_id: henry.id,
  trail_id: boulder_river.id
)





puts "Seed file is done!"

