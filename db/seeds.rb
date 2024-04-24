puts "Seed file is running..."

#Users

#Trails

# Detailed trail descriptions
blanca_lake = Trail.create!(
  name: "Blanca Lake",
  location: "Skykomish, WA",
  intensity: "Hard",
  length: 7.5,
  elevation_gain: 3300,
  highest_point: 4600,
  dogs: true,
  pass: "Northwest Forest",
  summary: "<p><strong>Blanca Lake Trailhead (Index-Galena Road)</strong><br>Access to the trailhead is via the Index-Galena Road with a parking area that fills quickly. The trailhead starts with a rigorous incline.</p>
<p><strong>Initial Ascent</strong><br>The trail begins steeply, ascending through a dense forest with challenging switchbacks and occasional views of the surrounding peaks.</p>
<p><strong>Middle Section</strong><br>After a steep climb, the trail levels near Virgin Lake, which provides a brief respite before the final descent to Blanca Lake. This section can be slippery when wet.</p>
<p><strong>Blanca Lake Basin</strong><br>The arrival at Blanca Lake reveals stunning turquoise waters set against Monte Cristo and Keyes Peak. Opportunities for picnicking and exploration around the lake abound, with multiple paths to different viewpoints.</p>
<p><strong>Additional Tips</strong><br>The round-trip distance is approximately 7.5 miles with an elevation gain of over 3,300 feet, making it a strenuous hike. Late summer through early fall is the best time to visit due to snowpack conditions. A steep descent to the lake and challenging return hike suggest that good hiking boots and trekking poles are essential.</p>"
)


snow_lake = Trail.create!(
  name: "Snow Lake",
  location: "Snoqualmie Pass, WA",
  intensity: "Moderate",
  length: 7.2,
  elevation_gain: 1800,
  highest_point: 4400,
  dogs: true,
  pass: "Northwest Forest",
  summary: "<p><strong>Snow Lake Trailhead (Alpental Parking Lot)</strong><br>Located at the Alpental Ski Area parking lot at Snoqualmie Pass. The trail begins from the far end of the parking lot, clearly marked for hikers.</p>
<p><strong>Trail Ascent</strong><br>The initial section of the trail climbs steadily with a series of switchbacks through dense alpine forest. The ascent provides glimpses of Snoqualmie Mountain and Guye Peak, enhancing the scenic hiking experience.</p>
<p><strong>Arrival at Snow Lake</strong><br>As the trail crests the ridge, hikers are greeted with their first view of Snow Lake, the largest in the Alpine Lakes Wilderness. This segment offers a dramatic reveal of the lake nestled below steep rocky crags.</p>
<p><strong>Lake Perimeter and Exploration</strong><br>The trail descends to the lake's shore, offering numerous spots for rest and photos. Hikers can follow the trail around the lake to explore various viewpoints, which are particularly stunning in the early morning or late afternoon light.</p>
<p><strong>Additional Tips</strong><br>The hike to Snow Lake is approximately 7.2 miles round trip with an elevation gain of 1800 feet, considered moderate in difficulty. The trail can be very busy, especially on weekends, so an early start is recommended to secure parking and enjoy a quieter experience. Due to its high elevation, the trail is often snow-covered into late spring, making waterproof hiking boots and trekking poles advisable.</p>"
)


lake_22 = Trail.create!(
  name: "Lake 22",
  location: "Granite Falls, WA",
  intensity: "Moderate",
  length: 5.4,
  elevation_gain: 1350,
  highest_point: 2400,
  dogs: true,
  pass: "Northwest Forest",
  summary: "<p><strong>Lake 22 Trailhead</strong><br>Located off the Mountain Loop Highway near Granite Falls, WA. The trailhead is well-marked and features a large parking lot, although it can fill quickly on weekends and holidays.</p>
<p><strong>Trail Overview</strong><br>The trail to Lake 22 circles through a lush landscape, climbing steadily through old-growth forest and opening up to stunning views of the surrounding peaks. The trail is well-maintained but can be rocky and wet in places, passing several waterfalls and streams.</p>
<p><strong>The Lake and Surrounding Area</strong><br>Upon reaching Lake 22, hikers are rewarded with the sight of the pristine lake set against the dramatic backdrop of Mount Pilchuck. The lake's perimeter trail offers varied perspectives of the lake and the towering cliffs above. In spring and early summer, the area is adorned with wildflowers, enhancing the scenic beauty.</p>
<p><strong>Additional Tips</strong><br>The round-trip distance to Lake 22 is approximately 5.4 miles with an elevation gain of about 1350 feet. The hike is popular for its moderate challenge and rewarding views, making it busy during peak times. Waterproof boots are recommended, as the trail can be soggy. Early arrival is advised to ensure parking and a more solitary experience on the trail.</p>"
)


annette_lake = Trail.create!(
  name: "Annette Lake",
  location: "North Bend, WA",
  intensity: "Moderate",
  length: 7.5,
  elevation_gain: 1800,
  highest_point: 3600,
  dogs: true,
  pass: "Northwest Forest",
  summary: "<p><strong>Annette Lake Trailhead</strong><br>The trailhead is located off Exit 47 on I-90, east of North Bend. There is a designated parking area with a Northwest Forest Pass required. Facilities include a toilet at the trailhead.</p>
<p><strong>Trail Experience</strong><br>The Annette Lake Trail winds through dense forest cover, starting with a moderate incline. The path features several switchbacks, crossing over Humpback Creek, which is known for its beautiful waterfall viewable from the trail.</p>
<p><strong>Reaching Annette Lake</strong><br>The trail eventually opens up to reveal Annette Lake, tucked away in a basin below Silver Peak. The lake's serene waters and surrounding alpine scenery provide a perfect spot for relaxation. Hikers can explore around the lake, finding various vantage points and picnic spots.</p>
<p><strong>Additional Tips</strong><br>The hike is 7.5 miles round trip with an elevation gain of 1800 feet, making it a solid moderate hike. The trail is popular throughout the year, although snow can linger into early summer. Waterproof hiking boots are advised, as the trail can be wet and muddy. Early morning starts are recommended to avoid crowds and secure parking.</p>"
)


fremont_lookout = Trail.create!(
  name: "Fremont Lookout",
  location: "Greenwater, WA",
  intensity: "Moderate",
  length: 5.6,
  elevation_gain: 1200,
  highest_point: 7200,
  dogs: false,
  pass: "National Park",
  summary: "<p><strong>Fremont Lookout Trailhead (Sunrise Park Road)</strong><br>The trailhead is located within the Sunrise area of Mount Rainier National Park. Parking is available at the Sunrise Visitor Center, which also offers restrooms and other visitor services.</p>
<p><strong>Trail Route</strong><br>The Fremont Lookout Trail begins on a well-maintained path from the north side of the parking area. The trail offers moderate hiking with gradual inclines and several switchbacks, leading through open meadows known for their vibrant wildflower displays in the summer.</p>
<p><strong>Reaching the Lookout</strong><br>The trail ascends to provide increasingly impressive views of Mount Rainier and the surrounding Cascade Range. As hikers approach the historic Fremont Lookout, the path narrows and the final ascent offers panoramic views that include Mount Rainier, Grand Park, and even the distant Olympic Mountains on clear days.</p>
<p><strong>At the Lookout</strong><br>The Fremont Lookout itself provides one of the best vantage points for viewing Mount Rainier and its glaciers. It's a popular spot for photographers and nature enthusiasts. The lookout is not staffed but serves as a significant historical site, with information about its past role in fire detection.</p>
<p><strong>Additional Tips</strong><br>This 5.6-mile round-trip hike is relatively moderate with an elevation gain of 800 feet. The trail is busiest from July to September when the weather is most favorable and the wildflowers are in bloom. Arriving early is recommended to avoid crowds and to enjoy a quieter hike. A National Park pass is required for entry into the park.</p>"
)


gothic_basin = Trail.create!(
  name: "Gothic Basin",
  location: "Verlot, WA",
  intensity: "Hard",
  length: 9.2,
  elevation_gain: 2840,
  highest_point: 5200,
  dogs: true,
  pass: "Northwest Forest",
  summary: "<p><strong>Gothic Basin Trailhead (Barlow Pass)</strong><br>The trailhead is accessed off the Mountain Loop Highway, starting at Barlow Pass. There is limited parking available, so an early start is recommended to secure a spot.</p>
<p><strong>Trail Description</strong><br>The trail to Gothic Basin is known for its rugged terrain and steep inclines, making it a challenging yet rewarding hike. Initially, the path follows an old mining road, which soon transitions into a narrower, rockier trail. Hikers will navigate through dense forest before reaching the more open areas with views of the surrounding peaks.</p>
<p><strong>Arrival at Gothic Basin</strong><br>Upon reaching the basin, hikers are greeted with dramatic views of jagged peaks and alpine terrain. The area is dotted with small lakes and tarns, offering numerous opportunities for exploration and photography. Gothic Peak looms over the basin, providing a stunning backdrop.</p>
<p><strong>Exploration Opportunities</strong><br>The basin itself allows for various activities, including camping, fishing, and further hiking to places like Foggy Lake, which sits directly below Gothic Peak. The rugged landscape is particularly striking in the late summer when the snow has melted and the rocky terrain is fully visible.</p>
<p><strong>Additional Tips</strong><br>This hike covers approximately 9.5 miles round-trip with an elevation gain of 2800 feet, categorized as hard due to the steep and rocky terrain. The trail can be snow-covered until mid-summer, so proper hiking gear is essential. Hikers should be prepared for rapid weather changes and bring navigation aids as the trail can be difficult to follow in places.</p>"
)


hidden_lake = Trail.create!(
  name: "Hidden Lake Lookout",
  location: "Marblemount, WA",
  intensity: "Hard",
  length: 8.0,
  elevation_gain: 3300,
  highest_point: 6900,
  dogs: false,
  pass: "None",
  summary: "<p><strong>Hidden Lake Lookout Trailhead</strong><br>The trailhead starts from a small parking area along Cascade River Road near Marblemount. Early arrival is recommended as parking is limited and the trail is popular among hikers and photographers.</p>
<p><strong>Trail Ascent</strong><br>The Hidden Lake Lookout trail is demanding, with a steep ascent right from the start. It traverses through dense forest, breaking out into open meadow areas filled with wildflowers in the late spring and summer. The path continues to ascend steeply, offering occasional views of the surrounding peaks and valleys.</p>
<p><strong>Reaching the Lookout</strong><br>The trail culminates at Hidden Lake Lookout, perched dramatically at the edge of a precipice. The lookout offers unparalleled views of Hidden Lake below and a panoramic vista of the North Cascades. The final segment to the lookout is rocky and can be snow-covered, requiring careful navigation.</p>
<p><strong>Exploration and Overnight Stays</strong><br>Hidden Lake Lookout is also a popular spot for overnight stays, though space is limited and cannot be reserved. Hikers planning to stay overnight should be fully prepared for backcountry conditions. Exploring the area around the lookout provides numerous photo opportunities and chances to see wildlife.</p>
<p><strong>Additional Tips</strong><br>This 8-mile round-trip hike is challenging with a significant elevation gain of 3300 feet. The best time to hike is from July to October when the trail is mostly free of snow. Due to its elevation and exposure, it's crucial to bring adequate clothing and gear to handle potential cold and windy conditions.</p>"
)


mailbox_peak = Trail.create!(
  name: "Mailbox Peak",
  location: "North Bend, WA",
  intensity: "Hard",
  length: 9.4,
  elevation_gain: 4000,
  highest_point: 4822,
  dogs: true,
  pass: "Discover",
  summary: "<p><strong>Mailbox Peak Trailhead</strong><br>The trailhead for Mailbox Peak is located just off I-90 near North Bend. The parking lot is quite large but can fill quickly due to the trail’s popularity. A Discover Pass is required for parking.</p>
<p><strong>Old Trail vs. New Trail</strong><br>There are two routes to the summit – the Old Trail and the New Trail. The Old Trail is shorter but much steeper, often requiring the use of hands for balance and climbing. The New Trail, recommended for most hikers, is longer but features a more gradual ascent with switchbacks.</p>
<p><strong>Summit and Mailbox</strong><br>Both trails converge near the summit, where hikers can enjoy expansive views of the surrounding Cascade Range, including Mount Si and Mount Washington. The summit is famous for its namesake mailbox, where hikers traditionally leave notes and trinkets.</p>
<p><strong>Descent and Precautions</strong><br>The descent is typically via the New Trail to avoid the steep, slippery conditions of the Old Trail. Due to the trail’s difficulty and elevation gain, it is essential to be well-prepared with adequate water, food, and proper hiking boots. Trekking poles are highly recommended.</p>
<p><strong>Additional Tips</strong><br>This 9.4-mile round-trip hike is strenuous, with an elevation gain of 4000 feet. It is especially popular among those training for more significant climbs. The trail is open year-round but can be hazardous in snowy or icy conditions without the proper equipment.</p>"
)


lake_serene = Trail.create!(
  name: "Lake Serene",
  location: "Gold Bar, WA",
  intensity: "Hard",
  length: 8.2,
  elevation_gain: 2000,
  highest_point: 2521,
  dogs: true,
  pass: "Northwest Forest",
  summary: "<p><strong>Lake Serene Trailhead</strong><br>Located off Highway 2 near Gold Bar, the Lake Serene Trailhead is easily accessible with a spacious parking lot. A Northwest Forest Pass is required to park.</p>
<p><strong>Trail to Bridal Veil Falls</strong><br>The hike starts on a well-maintained trail that initially shares its path with the Bridal Veil Falls trail. This segment offers a moderate hike with a slight diversion to view the stunning Bridal Veil Falls, highly recommended for its picturesque cascades.</p>
<p><strong>Climbing to Lake Serene</strong><br>Post the falls, the trail to Lake Serene begins its steep climb. The path includes numerous switchbacks, traversing through lush forest before breaking out onto higher ground with more expansive views. The ascent is challenging but rewards hikers with increasingly impressive scenery.</p>
<p><strong>Lake Serene</strong><br>At the end of the ascent, Lake Serene lies nestled below the imposing cliffs of Mount Index. The lake, true to its name, offers a tranquil spot to relax and soak in the surrounding beauty. Its clear, cold waters reflect the steep rock faces above, making for a mesmerizing sight.</p>
<p><strong>Additional Tips</strong><br>This 8.2-mile round-trip hike involves an elevation gain of 2000 feet and is considered hard due to the steep sections. The trail can be crowded, especially on weekends, so an early start is advised to enjoy a more peaceful experience. The area around the lake is perfect for a picnic, but hikers should be prepared to pack out all trash.</p>"
)


lake_ingalls = Trail.create!(
  name: "Lake Ingalls",
  location: "Cle Elum, WA",
  intensity: "Hard",
  length: 9.0,
  elevation_gain: 2500,
  highest_point: 6800,
  dogs: false,
  pass: "Northwest Forest",
  summary: "<p><strong>Lake Ingalls Trailhead (Esmeralda Basin)</strong><br>The trailhead is located at the end of Teanaway Road, north of Cle Elum. This area offers a large parking lot, but it fills quickly on weekends due to the popularity of the trail. A Northwest Forest Pass is required.</p>
<p><strong>Trail Overview</strong><br>The trail to Lake Ingalls is a scenic route that begins with a moderate incline through pine forests and meadows, which are often filled with wildflowers in the early summer. The path includes several stream crossings that may be challenging during high water periods.</p>
<p><strong>High Alpine Terrain</strong><br>As the trail ascends, it enters alpine terrain with exposed rocky sections and stunning views of Mount Stuart and other peaks in the Alpine Lakes Wilderness. The final approach to Lake Ingalls involves navigating a boulder field, which requires careful foot placement and some scrambling.</p>
<p><strong>Lake Ingalls</strong><br>The lake itself is a breathtaking high alpine lake, known for its clear blue waters and the dramatic backdrop of the surrounding rugged peaks. It's a popular destination for photographers and hikers alike. The area around the lake is fragile, so visitors are encouraged to stick to established paths and practice Leave No Trace principles.</p>
<p><strong>Additional Tips</strong><br>This 9-mile round-trip hike gains 2500 feet in elevation and is rated as hard. The best times to visit are late summer to early fall when the snow has mostly melted and the access roads are clear. Due to its elevation, the weather at Lake Ingalls can change rapidly, so it is essential to come prepared with appropriate gear and clothing.</p>"
)

mount_storm_king = Trail.create!(
  name: "Mount Storm King",
  location: "Port Angeles, WA",
  intensity: "Hard",
  length: 3.8,
  elevation_gain: 2100,
  highest_point: 4500,
  dogs: false,
  pass: "National Park",
  summary: "<p><strong>Mount Storm King Trailhead</strong><br>The trailhead is located just beyond the Storm King Ranger Station near Lake Crescent, within the Olympic National Park. Parking is available at the ranger station, with additional overflow parking along the road. A National Park pass is required.</p>
<p><strong>Trail Description</strong><br>The trail to Mount Storm King begins with a steady climb through a dense, mossy forest. As the elevation increases, the path becomes steeper and more rugged, with several switchbacks that require careful navigation due to loose rocks and roots.</p>
<p><strong>Challenging Ascent</strong><br>Midway through, the trail’s incline becomes even more intense, challenging even seasoned hikers. Ropes are installed along portions of the final ascent to aid hikers as they navigate steep and rocky terrain. This section offers dramatic views over Lake Crescent and the surrounding forested areas.</p>
<p><strong>The Summit</strong><br>Reaching the summit of Mount Storm King offers a rewarding panoramic view of the Olympic Mountains, Lake Crescent, and the Strait of Juan de Fuca. The summit area is small and can be crowded, but the breathtaking views are well worth the challenging climb.</p>
<p><strong>Additional Tips</strong><br>This 3.8-mile round-trip hike is very strenuous with an elevation gain of 2100 feet, mainly over the latter half of the trail. It is best attempted by those in good physical condition. Early morning starts are recommended to avoid crowds and to ensure a safer climb with the aid of ropes. Hikers should bring gloves to grip the ropes better and wear sturdy hiking boots for better traction on the steep, rocky paths.</p>"
)


park_butte = Trail.create!(
  name: "Park Butte",
  location: "Glacier, WA",
  intensity: "Moderate",
  length: 7.0,
  elevation_gain: 2200,
  highest_point: 5400,
  dogs: true,
  pass: "Northwest Forest",
  summary: "<p><strong>Park Butte Trailhead</strong><br>The trailhead is accessed from the end of Forest Service Road 13, near the town of Glacier. There is a parking area with a limited number of spaces, and a Northwest Forest Pass is required.</p>
<p><strong>Trail Route</strong><br>The trail to Park Butte is well-maintained and starts with a gentle ascent through lush forest. It then crosses several streams and offers beautiful meadow views, which are particularly vibrant with wildflowers in the late spring and summer months.</p>
<p><strong>Alpine Terrain and Views</strong><br>As the hike progresses, the elevation gain increases, leading to more open alpine terrain. Hikers are rewarded with stunning views of Mount Baker and the surrounding peaks. The path includes informational signs about the local geology and history, enhancing the educational aspect of the hike.</p>
<p><strong>Reaching Park Butte Lookout</strong><br>The final ascent to the Park Butte lookout is more challenging but offers panoramic views from the lookout itself. The lookout, when open, allows hikers to step inside and enjoy historical displays about the area's early mountaineering history.</p>
<p><strong>Additional Tips</strong><br>This 7-mile round-trip hike has an elevation gain of 2200 feet, rated as moderate. The trail is popular, so early starts are recommended to avoid crowds and fully enjoy the peaceful surroundings. Late summer to early fall is the best time to visit when the trail is mostly free of snow and the visibility is at its peak.</p>"
)


rachel_lake = Trail.create!(
  name: "Rachel Lake",
  location: "Snoqualmie Pass, WA",
  intensity: "Moderate",
  length: 8.0,
  elevation_gain: 1600,
  highest_point: 4600,
  dogs: true,
  pass: "Northwest Forest",
  summary: "<p><strong>Rachel Lake Trailhead</strong><br>Located off Forest Road 4930, accessible via the Kachess Lake Road off I-90. The trailhead has a parking lot, but it can get crowded on weekends. A Northwest Forest Pass is required for parking.</p>
<p><strong>Trail Description</strong><br>The trail to Rachel Lake starts off moderately through dense forests, then transitions to a more rugged path as it approaches the lake. The trail includes several creek crossings and sections that can be muddy or rocky, depending on the season.</p>
<p><strong>Reaching Rachel Lake</strong><br>The trail becomes steeper as it nears Rachel Lake, climbing through a series of switchbacks. Upon reaching the lake, hikers are greeted by the serene waters surrounded by towering peaks, providing a perfect backdrop for a rest or picnic.</p>
<p><strong>Exploration Opportunities</strong><br>Around Rachel Lake, there are opportunities to explore further, including trails leading to nearby alpine lakes such as Lila Lake and Rampart Lakes. The area is particularly beautiful in the fall when the larch trees turn golden.</p>
<p><strong>Additional Tips</strong><br>This 8-mile round trip hike has an elevation gain of 1600 feet and is considered moderate in difficulty. The trail is popular, so starting early in the day is recommended to avoid crowds. Hikers should be prepared for changing weather conditions and bring appropriate gear for potentially wet and slippery sections of the trail.</p>"
)


cutthroat_pass = Trail.create!(
  name: "Cutthroat Pass",
  location: "Winthrop, WA",
  intensity: "Moderate",
  length: 10.0,
  elevation_gain: 2000,
  highest_point: 6800,
  dogs: true,
  pass: "Northwest Forest",
  summary: "<p><strong>Cutthroat Pass Trailhead</strong><br>The trailhead is accessible from Highway 20 near Rainy Pass, not far from Winthrop. The parking area is ample, but it can fill up quickly during peak hiking months. A Northwest Forest Pass is required for parking.</p>
<p><strong>Trail Experience</strong><br>The trail to Cutthroat Pass begins with a gentle ascent through lush forest, opening up to expansive meadows that burst with wildflowers in the spring and summer. The path is well-maintained and offers gradual elevation gain, making it accessible for a range of hikers.</p>
<p><strong>Ascending to the Pass</strong><br>As the trail climbs higher, it traverses rocky switchbacks with increasing views of the surrounding peaks and valleys. The vistas become more spectacular as you approach the pass, with panoramic views of the North Cascades.</p>
<p><strong>At Cutthroat Pass</strong><br>The pass itself sits at the border of the Okanogan-Wenatchee National Forest and the North Cascades National Park. It offers stunning views of nearby peaks such as Cutthroat Peak and Liberty Bell Mountain. The area is a popular spot for lunch breaks and photography, providing a scenic backdrop for both.</p>
<p><strong>Additional Tips</strong><br>This 7-mile round-trip hike has an elevation gain of 2000 feet, rated as moderate. The trail is best visited from late spring through fall when the snow has melted and the path is clear. Weather at the pass can change quickly, so be prepared with layers and essential gear. Early starts are recommended to enjoy the tranquility of the morning and to ensure parking availability.</p>"
)


colchuck_lake = Trail.create!(
  name: "Colchuck Lake",
  location: "Leavenworth, WA",
  intensity: "Hard",
  length: 8.0,
  elevation_gain: 2280,
  highest_point: 5600,
  dogs: false,
  pass: "Northwest Forest",
  summary: "<p><strong>Colchuck Lake Trailhead</strong><br>The trailhead is located at the end of Forest Road 7601, which branches off Icicle Creek Road near Leavenworth. The road is rough and requires a vehicle with good clearance. Parking is available but can fill up early, and a Northwest Forest Pass is required.</p>
<p><strong>Trail Overview</strong><br>The hike to Colchuck Lake is known for its strenuous incline and rugged terrain. The trail begins relatively moderate but soon increases in difficulty as it crosses several streams and ascends through dense forest.</p>
<p><strong>Challenging Ascent</strong><br>As the trail approaches the lake, the path becomes steeper and rockier, challenging even experienced hikers. The ascent includes navigating over large boulders and rough patches, which can be slippery when wet or icy.</p>
<p><strong>Colchuck Lake</strong><br>The effort is rewarded upon reaching Colchuck Lake, known for its striking, vivid blue waters and the dramatic backdrop of Dragontail Peak and Aasgard Pass. The lake is a popular destination for photographers and adventurers alike. The surrounding area offers several spots for rest and exploration.</p>
<p><strong>Additional Tips</strong><br>This 8-mile round-trip hike has an elevation gain of 2280 feet and is rated as hard. The best times to visit are late spring through early fall when the trail is free from snow. Due to its popularity and limited parking, arriving early is essential. Hikers should bring adequate water, snacks, and wear sturdy hiking boots. Be prepared for sudden weather changes and colder temperatures near the lake.</p>"
)


boulder_river = Trail.create!(
  name: "Boulder River",
  location: "Arlington, WA",
  intensity: "Easy",
  length: 8.6,
  elevation_gain: 700,
  highest_point: 700,
  dogs: true,
  pass: "None",
  summary: "<p><strong>Boulder River Trailhead</strong><br>The trailhead is located off French Creek Road, accessible from Highway 530 near Arlington. Parking is available along the road near the trailhead. The area is typically less crowded than other popular hikes, making it a peaceful option for families and casual hikers.</p>
<p><strong>Trail Description</strong><br>The trail follows the Boulder River, offering an easy hike with minimal elevation gain. The path is well-maintained and winds through lush forest, featuring moss-covered trees and fern undergrowth, creating a quintessential Pacific Northwest atmosphere.</p>
<p><strong>Waterfalls and River Views</strong><br>A highlight of the hike is the series of beautiful waterfalls that can be viewed along the trail, particularly impressive during the spring runoff. The river itself provides several access points where hikers can enjoy the soothing sounds of flowing water and take a break to appreciate the natural surroundings.</p>
<p><strong>Family-Friendly Hike</strong><br>This hike is especially suitable for families and those looking for a less strenuous outdoor experience. The trail is also popular among bird watchers and nature photographers due to the abundant wildlife and scenic views.</p>
<p><strong>Additional Tips</strong><br>This 8.6-mile round-trip hike is easy, with an elevation gain of just 700 feet. The trail is accessible year-round, though it can be particularly muddy and slippery during the wetter months. Waterproof hiking boots are recommended, and hikers should be prepared for variable weather conditions, even in summer.</p>"
)


ancient_lakes = Trail.create!(
  name: "Ancient Lakes",
  location: "Quincy, WA",
  intensity: "Easy",
  length: 9.0,
  elevation_gain: 300,
  highest_point: 1000,
  dogs: true,
  pass: "Discover",
  summary: "<p><strong>Ancient Lakes Trailhead</strong><br>The trailhead is accessible via Road 9-NW near Quincy. There is ample parking available, but the area can get quite busy, especially during weekends in the spring and fall. No parking pass is required.</p>
<p><strong>Trail Overview</strong><br>The hike to Ancient Lakes is an easy, relatively flat trail that winds through the shrub-steppe ecosystem typical of the Columbia Basin. The trail is well-marked and offers stunning views of basalt cliffs and several small lakes.</p>
<p><strong>Lakes and Waterfalls</strong><br>Along the route, hikers can enjoy the sight of multiple small waterfalls and picturesque lakes, making it a popular spot for photographers and nature lovers. The main attraction, Ancient Lakes, consists of a series of small, serene lakes surrounded by dramatic basalt cliffs.</p>
<p><strong>Recreational Opportunities</strong><br>This area is great for a leisurely day hike, and the flat terrain makes it accessible for families and less experienced hikers. It's also a popular spot for overnight camping, fishing, and bird watching. The open landscape offers expansive views of the sky, ideal for stargazing on clear nights.</p>
<p><strong>Additional Tips</strong><br>This 9-mile round trip hike has a minimal elevation gain of 300 feet, making it one of the easier trails. The best times to visit are in the spring and fall when the temperatures are cooler and the wildlife, including migratory birds, is most active. Hikers should be prepared for windy conditions and bring plenty of water, as the area can be quite dry and hot during the summer months.</p>"
)


bandera_mountain = Trail.create!(
  name: "Bandera Mountain",
  location: "North Bend, WA",
  intensity: "Hard",
  length: 8.0,
  elevation_gain: 3400,
  highest_point: 5240,
  dogs: true,
  pass: "Northwest Forest",
  summary: "<p><strong>Bandera Mountain Trailhead</strong><br>Located off Exit 45 on I-90, the trailhead starts at the Ira Spring Trailhead, which offers a well-maintained parking lot. A Northwest Forest Pass is required for parking.</p>
<p><strong>Trail Route</strong><br>The hike to Bandera Mountain begins on the Ira Spring Trail, which is shared with hikers going to Mason Lake. The trail starts with a moderate incline through dense forest, gradually becoming steeper as it approaches the mountain.</p>
<p><strong>Steep Ascent</strong><br>About halfway, the trail splits, and the path to Bandera Mountain veers right, steeply ascending through open terrain with fewer trees. This section can be challenging, with rocky and potentially slippery conditions depending on the weather.</p>
<p><strong>The Summit</strong><br>The summit of Bandera Mountain offers spectacular views of Mount Rainier, Mount Defiance, and the surrounding Alpine Lakes Wilderness. The peak is known for its breathtaking vistas and is a popular spot for photography, especially during the early morning or late afternoon light.</p>
<p><strong>Additional Tips</strong><br>This 8-mile round trip hike has a significant elevation gain of 3400 feet, making it a strenuous climb. The trail is best hiked from late spring to early fall when the snow has melted. Due to its popularity, starting early in the day is recommended to avoid crowds and to enjoy a more solitary experience at the summit. Hikers should come prepared with plenty of water, snacks, and proper hiking gear to handle the steep and rocky terrain.</p>"
)


beckler_peak = Trail.create!(
  name: "Beckler Peak",
  location: "Skykomish, WA",
  intensity: "Moderate",
  length: 7.6,
  elevation_gain: 2240,
  highest_point: 5026,
  dogs: true,
  pass: "None",
  summary: "<p><strong>Beckler Peak Trailhead</strong><br>The trailhead is accessed via the Beckler River Road off Highway 2, near Skykomish. The drive includes a section on a gravel road, which is generally well-maintained but can be rough in places. A Northwest Forest Pass is required for parking.</p>
<p><strong>Trail Overview</strong><br>The Beckler Peak trail offers a moderate hike with a steady incline. It starts through a dense forest of old-growth trees, providing cool shade and a peaceful atmosphere. As the trail ascends, it passes through lush meadows and opens up to occasional clearings with views of the surrounding mountains.</p>
<p><strong>Ascending to the Peak</strong><br>The final approach to Beckler Peak includes a series of switchbacks that gradually lead to the summit. The terrain becomes more open, allowing expansive views of the Central Cascades, including Glacier Peak and Mount Rainier on clear days.</p>
<p><strong>The Summit</strong><br>The summit of Beckler Peak provides panoramic views that reward the hiker for their effort. It's a fantastic spot for photos and a picnic, offering a 360-degree vista of the Cascade range.</p>
<p><strong>Additional Tips</strong><br>This 7-mile round-trip hike has an elevation gain of 1700 feet, rated as moderate. The trail is best visited from late spring through fall when the snow has melted, and the path is clear. Early starts are recommended to enjoy a more tranquil hike and to ensure parking availability. Be prepared for variable weather at the summit, as conditions can change quickly.</p>"
)


blue_lake = Trail.create!(
  name: "Blue Lake",
  location: "North Cascades, WA",
  intensity: "Moderate",
  length: 4.4,
  elevation_gain: 1050,
  highest_point: 6254,
  dogs: true,
  pass: "Northwest Forest",
  summary: "<p><strong>Blue Lake Trailhead</strong><br>The trailhead is located off Highway 20, also known as the North Cascades Highway, which provides easy access and parking. The area can be busy during peak months, so an early start is advisable. A Northwest Forest Pass is required for parking.</p>
<p><strong>Trail Experience</strong><br>The Blue Lake trail offers a moderate hike with a well-defined path that winds through a thick forest of pine and fir trees. The trail is relatively short but gradually ascends to the lake, making it suitable for families and casual hikers.</p>
<p><strong>Scenic Features</strong><br>Along the way, hikers are treated to views of towering peaks and rocky outcrops. As the trail nears Blue Lake, the environment opens up to reveal stunning alpine scenery with the lake's clear, vibrant blue waters nestled among the mountains.</p>
<p><strong>Lake and Surroundings</strong><br>At Blue Lake, the serene and picturesque setting is perfect for photography, picnicking, or simply relaxing by the water's edge. The area around the lake is rich in wildlife, including birds and marmots, and the lake itself often reflects the surrounding peaks in its calm waters.</p>
<p><strong>Additional Tips</strong><br>This 4-mile round trip hike has an elevation gain of 1050 feet. The trail is most accessible and enjoyable from mid-summer through early fall when the snow has melted and wildflowers bloom around the lake. Weather in the North Cascades can change rapidly, so hikers should be prepared with appropriate clothing and supplies.</p>"
)


goat_lake = Trail.create!(
  name: "Goat Lake",
  location: "Randle, WA",
  intensity: "Moderate",
  length: 12.0,
  elevation_gain: 2000,
  highest_point: 6600,
  dogs: true,
  pass: "Northwest Forest",
  summary: "<p><strong>Goat Lake Trailhead</strong><br>The trailhead is located at the end of Forest Road 2150, accessible from Highway 12 near Packwood. This remote trailhead has limited facilities, and parking can be sparse on busy weekends. No pass is required for parking.</p>
<p><strong>Trail Description</strong><br>The hike to Goat Lake in the Goat Rocks Wilderness is a scenic, moderate trek that begins with a gentle incline through old-growth forests. The trail crosses several streams, providing pleasant sounds of flowing water and opportunities to see aquatic life.</p>
<p><strong>Natural Scenery</strong><br>As the trail ascends, hikers can enjoy expansive views of the surrounding forest and the rugged terrain of the Goat Rocks Wilderness. The path features a mix of open meadows and dense woods, offering a variety of landscapes and wildlife viewing opportunities.</p>
<p><strong>Arrival at Goat Lake</strong><br>Goat Lake itself is situated in a picturesque basin surrounded by high cliffs and alpine peaks. The lake's clear waters are ideal for reflection shots with the stunning backdrop. It's a perfect spot for lunch and relaxation before heading back.</p>
<p><strong>Additional Tips</strong><br>This 10-mile round-trip hike has an elevation gain of 1400 feet, making it accessible to most hikers seeking a day adventure. The trail is best visited from late spring to early fall to avoid snow and icy conditions. Due to its popularity, consider visiting on weekdays or early mornings to avoid crowds. Hikers should bring adequate supplies, including water and snacks, and be prepared for sudden weather changes in this mountainous region.</p>"
)


index_town_wall = Trail.create!(
  name: "Index Town Wall",
  location: "Index, WA",
  intensity: "Hard",
  length: 2.0,
  elevation_gain: 500,
  highest_point: 1200,
  dogs: true,
  pass: "none",
  summary: "<p><strong>Index Town Wall Trailhead</strong><br>The trailhead is easily accessible from the town of Index, located off Index-Galena Road. The parking area is small and can fill quickly due to the popularity of the site for both hiking and rock climbing. A Discover Pass is required for parking.</p>
<p><strong>Trail Description</strong><br>The trail to the base of the Index Town Wall is short but steep, offering a vigorous hike through lush forest. The trail is well-maintained but rugged, with some sections requiring the use of hands to climb or stabilize oneself.</p>
<p><strong>Rock Climbing Destination</strong><br>The Index Town Wall itself is a renowned rock climbing destination, famous for its challenging granite routes. The wall attracts climbers of various skill levels, with routes ranging from beginner to expert.</p>
<p><strong>Viewpoints and Scenery</strong><br>Non-climbers can enjoy spectacular views of the North Fork Skykomish River and surrounding mountains from the base of the wall or from several vantage points along the trail. The area is particularly beautiful in the morning light or late afternoon.</p>
<p><strong>Additional Tips</strong><br>This 2-mile round trip hike has an elevation gain of 500 feet and is rated as hard due to the steep and technical nature of the trail. Hikers and climbers should come prepared with appropriate footwear and gear. The area is busiest on weekends, so weekday visits are recommended for those seeking a quieter experience. Be aware of climbers above and the potential for falling debris near the wall.</p>"
)


maple_pass_loop = Trail.create!(
  name: "Maple Pass Loop",
  location: "Winthrop, WA",
  intensity: "Moderate",
  length: 7.2,
  elevation_gain: 2020,
  highest_point: 6650,
  dogs: false,
  pass: "Northwest Forest",
  summary: "<p><strong>Maple Pass Loop Trailhead</strong><br>The trailhead is located at Rainy Pass on the North Cascades Highway (Highway 20). There is a large parking area that can accommodate many visitors, but it can fill quickly on weekends and holidays. A Northwest Forest Pass is required for parking.</p>
<p><strong>Trail Overview</strong><br>Maple Pass Loop is a stunningly scenic trail that offers a complete circuit around Rainy Lake and up to Maple Pass. The trail is well-maintained and features a series of switchbacks that gradually ascend through dense forest and open meadows.</p>
<p><strong>Scenic Highlights</strong><br>As the trail climbs, it offers expansive views of the surrounding peaks and valleys, including North Cascades National Park. The path skirts above several alpine lakes, providing spectacular views, especially when the wildflowers are in bloom in late summer.</p>
<p><strong>At the Summit</strong><br>The highest point on the loop provides panoramic views of the area, including Heather Pass, Black Peak, and Lake Ann. The summit area is a perfect spot for a break to enjoy the scenery and take photos.</p>
<p><strong>Additional Tips</strong><br>This 7-mile loop has an elevation gain of 2000 feet, making it a moderate hike. The trail is best hiked in a clockwise direction to take advantage of the gradual incline and more direct descent. It is most popular from July to October when the trail is mostly snow-free. Early morning starts are recommended to enjoy a more solitary experience and to capture the best light for photography.</p>"
)


melakwa_lake = Trail.create!(
  name: "Melakwa Lake",
  location: "North Bend, WA",
  intensity: "Hard",
  length: 8.0,
  elevation_gain: 2500,
  highest_point: 4600,
  dogs: true,
  pass: "Northwest Forest",
  summary: "<p><strong>Melakwa Lake Trailhead</strong><br>The trailhead is located at the Denny Creek Trailhead, accessible from Exit 47 on I-90. The parking area is well-developed but can fill quickly during peak hiking months. A Northwest Forest Pass is required for parking.</p>
<p><strong>Trail Description</strong><br>The trail to Melakwa Lake starts with a moderate incline along Denny Creek, known for its natural waterslides. After crossing the creek, the trail becomes steeper and more rugged, with several switchbacks through dense, old-growth forest.</p>
<p><strong>Increasing Elevation and Scenery</strong><br>As the trail gains elevation, it opens up to provide views of the surrounding peaks. The path can be rocky and requires careful navigation. Close to the lake, the trail crosses large boulder fields, adding to the hike’s challenge.</p>
<p><strong>Melakwa Lake</strong><br>Melakwa Lake is situated in a dramatic alpine basin surrounded by steep cliffs and peaks. The lake's crystal-clear waters and scenic setting make it a rewarding destination for those who make the challenging hike. It's an excellent spot for a rest and a picnic before heading back.</p>
<p><strong>Additional Tips</strong><br>This 8-mile round trip hike has an elevation gain of 2500 feet and is rated as hard. The trail is best attempted from late spring to early fall when it is mostly snow-free. Due to its popularity, an early start is recommended to secure parking and enjoy the trail with fewer people. Proper hiking boots and poles are advised to handle the rocky and potentially slippery sections.</p>"
)


mount_pilchuck = Trail.create!(
  name: "Mount Pilchuck",
  location: "Granite Falls, WA",
  intensity: "Hard",
  length: 5.4,
  elevation_gain: 2300,
  highest_point: 5327,
  dogs: true,
  pass: "Northwest Forest",
  summary: "<p><strong>Mount Pilchuck Trailhead</strong><br>The trailhead is located at the end of Mount Pilchuck Access Road, which is a rough, unpaved road; high-clearance vehicles are recommended. The parking lot requires a Northwest Forest Pass. Due to its popularity, arriving early is advised to ensure parking availability.</p>
<p><strong>Trail Overview</strong><br>The hike to Mount Pilchuck is a challenging yet rewarding adventure. The trail begins through dense forest before quickly gaining elevation. As hikers ascend, the path becomes rocky and rugged, with some areas requiring the use of hands for balance and support.</p>
<p><strong>Scenic Views and Lookout Tower</strong><br>Upon nearing the summit, the terrain opens up to spectacular panoramic views of the Cascade Range, including Mount Baker, Mount Rainier, and the Olympic Mountains. The summit features a historic fire lookout tower, which provides a unique and picturesque setting for hikers to enjoy the surrounding vistas.</p>
<p><strong>Additional Tips</strong><br>This 5.4-mile round trip hike gains 2300 feet in elevation and is considered hard due to steep and rocky sections. Dogs are allowed on the trail but should be able to handle rough terrain. The trail can be busy, especially on weekends, so consider a weekday hike if possible. Weather conditions at the summit can change rapidly, so be prepared with appropriate clothing and gear. The lookout tower offers a great spot for lunch and rest, but it can be quite windy.</p>"
)


mount_si = Trail.create!(
  name: "Mount Si",
  location: "North Bend, WA",
  intensity: "Hard",
  length: 8.0,
  elevation_gain: 3150,
  highest_point: 3900,
  dogs: true,
  pass: "Discover",
  summary: "<p><strong>Mount Si Trailhead</strong><br>The trailhead for Mount Si is easily accessible just outside of North Bend, off I-90. The large parking area accommodates many visitors, but it can fill up quickly due to the trail's popularity, particularly on weekends. A Discover Pass is required for parking.</p>
<p><strong>Trail Description</strong><br>The trail to Mount Si is a classic hike in the Seattle area known for its strenuous workout and rewarding views. It begins with a steady climb through dense forest, featuring well-maintained switchbacks that steadily gain elevation.</p>
<p><strong>Scenic Points and Challenges</strong><br>As the trail continues, it opens up to occasional clearings that offer views of the Snoqualmie Valley, Mount Rainier, and the surrounding Cascade Range. The path becomes rockier and more rugged as it approaches the summit.</p>
<p><strong>The Summit</strong><br>The summit of Mount Si provides a panoramic view of the Puget Sound region and is a popular spot for lunch breaks and photos. There is also a 'haystack' rock formation at the top, which is an optional scramble for those looking for an extra challenge.</p>
<p><strong>Additional Tips</strong><br>This 8-mile round trip hike has an elevation gain of 3150 feet and is rated as hard. Dogs are allowed on the trail, but they should be fit and able to handle steep, rocky terrain. The trail is busiest from late spring through early fall. Hikers should start early to avoid crowds and ensure enough time to complete the hike safely before dusk. Proper hiking boots and water are essential, and bringing layers is recommended as temperatures can drop at the higher elevations.</p>"
)


poo_poo_point = Trail.create!(
  name: "Poo Poo Point",
  location: "Issaquah, WA",
  intensity: "Moderate",
  length: 7.2,
  elevation_gain: 1748,
  highest_point: 2021,
  dogs: true,
  pass: "None",
  summary: "<p><strong>Poo Poo Point Trailhead</strong><br>The trailhead for Poo Poo Point is located on the Issaquah-Hobart Road and is part of the larger Tiger Mountain State Forest area. There is no pass required for parking, but the lot can fill up quickly due to the trail's popularity.</p>
<p><strong>Trail Description</strong><br>The hike to Poo Poo Point is a popular choice for those looking for a moderate hike with rewarding views. The trail is well-marked and begins with a gradual incline through lush, second-growth forest. It becomes progressively steeper and more challenging as it approaches the point.</p>
<p><strong>Scenic Views and Activities</strong><br>At the top of Poo Poo Point, hikers are rewarded with sweeping views of the Issaquah Valley, Lake Sammamish, and on clear days, the Olympic Mountains and Mount Rainier. The point is also a well-known launch site for paragliders, offering an entertaining spectacle for hikers.</p>
<p><strong>Additional Tips</strong><br>This 7.2-mile round trip hike has an elevation gain of 1748 feet. Dogs are welcome on the trail, making it a great choice for a day hike with a furry friend. The trail is busiest on weekends, so a weekday hike is advisable to avoid crowds. Hikers should bring plenty of water and snacks, and wear sturdy hiking boots. Since there is no coverage at the top and weather can change quickly, be prepared with a windbreaker or an extra layer.</p>"
)


mason_lake = Trail.create!(
  name: "Mason Lake",
  location: "North Bend, WA",
  intensity: "Moderate",
  length: 7.0,
  elevation_gain: 2420,
  highest_point: 4320,
  dogs: true,
  pass: "Northwest Forest",
  summary: "<p><strong>Mason Lake Trailhead</strong><br>The trailhead is located off I-90 at the Ira Spring Trailhead, which is shared with several other popular hikes. The parking area is large but can fill quickly on weekends. A Northwest Forest Pass is required for parking.</p>
<p><strong>Trail Description</strong><br>The hike to Mason Lake is known for its vibrant forest paths and scenic views. The trail begins with a moderate incline through dense forest before reaching a series of switchbacks that increase the ascent's difficulty. The path is well-maintained but can be rocky and rooty, challenging hikers as they climb.</p>
<p><strong>Lake and Surroundings</strong><br>Upon reaching Mason Lake, hikers are greeted with the beautiful sight of the lake nestled within a basin surrounded by tall peaks. The lake area offers several spots for resting and enjoying the peaceful mountain scenery. It's a popular spot for a swim or a picnic during the warmer months.</p>
<p><strong>Additional Tips</strong><br>This 7-mile round trip hike has an elevation gain of 2420 feet, making it a moderate to challenging hike. Dogs are allowed on the trail, making it a great option for hikers wanting to bring their pets. The trail can be crowded, especially in the summer, so starting early is recommended to avoid the busiest times. Proper hiking boots and water are essential, and packing a lunch to enjoy by the lake can make for a perfect mid-hike break.</p>"
)


rattlesnake_ledge = Trail.create!(
  name: "Rattlesnake Ledge",
  location: "North Bend, WA",
  intensity: "Moderate",
  length: 4.0,
  elevation_gain: 1160,
  highest_point: 2078,
  dogs: true,
  pass: "Discover",
  summary: "<p><strong>Rattlesnake Ledge Trailhead</strong><br>The trailhead is located at Rattlesnake Lake near North Bend. The area features a large parking lot that can fill up quickly due to the trail's popularity, especially on weekends. A Discover Pass is required for parking.</p>
<p><strong>Trail Description</strong><br>The hike to Rattlesnake Ledge is a popular choice due to its relatively short distance and moderate challenge. The trail is well-maintained and starts with a gentle incline through lush, dense forest before becoming steeper as it approaches the ledge.</p>
<p><strong>Scenic Viewpoints</strong><br>At the top of Rattlesnake Ledge, hikers are rewarded with sweeping views of Rattlesnake Lake, the Cedar River watershed, and the surrounding mountains. The ledge offers several outcroppings where hikers can take in the scenery and capture stunning photographs.</p>
<p><strong>Additional Tips</strong><br>This 4-mile round trip hike has an elevation gain of 1160 feet. The trail is busy throughout the year, so an early start is recommended to enjoy a quieter experience. Dogs are allowed on the trail, making it a good option for hikers with pets. While the trail is not overly difficult, the final approach to the ledge involves some steep and rocky sections, so good hiking shoes are a must. Hikers should also be cautious at the ledge, as it can be slippery and crowded.</p>"
)


monte_cristo_ghost_town = Trail.create!(
  name: "Monte Cristo Ghost Town",
  location: "Granite Falls, WA",
  intensity: "Moderate",
  length: 8.0,
  elevation_gain: 700,
  highest_point: 2800,
  dogs: true,
  pass: "Northwest Forest",
  summary: "<p><strong>Monte Cristo Ghost Town Trailhead</strong><br>The trailhead is located near the town of Granite Falls at the end of the Mountain Loop Highway. The area has a designated parking lot, but it can get crowded, especially on weekends. A Northwest Forest Pass is required for parking.</p>
<p><strong>Trail Description</strong><br>The trail to Monte Cristo Ghost Town is relatively flat and well-maintained, making it a moderate hike suitable for most hikers. The path follows the old railway track, winding through the forest and alongside the Sauk River.</p>
<p><strong>Historical Features</strong><br>As hikers approach the ghost town, they can explore various remnants of the once-thriving mining town, including old building foundations, mining equipment, and informational signs detailing the town's history.</p>
<p><strong>Natural Scenery</strong><br>The route offers beautiful views of the surrounding mountains and river valleys. The area is also known for its vibrant wildflowers in the spring and early summer.</p>
<p><strong>Additional Tips</strong><br>This 8-mile round-trip hike has a gentle elevation gain of 700 feet. Dogs are allowed on the trail, making it a great hike for pet owners. Due to its historical significance and scenic beauty, the trail can be popular, so early arrival is recommended to secure parking and enjoy a more solitary experience. Hikers should bring water and snacks, and wear comfortable walking shoes. Be prepared for variable weather conditions in the mountains, even during the summer months.</p>"
)


naches_peak_loop = Trail.create!(
  name: "Naches Peak Loop",
  location: "Enumclaw, WA",
  intensity: "Moderate",
  length: 3.2,
  elevation_gain: 600,
  highest_point: 5850,
  dogs: false,
  pass: "Northwest Forest",
  summary: "<p><strong>Naches Peak Loop Trailhead</strong><br>The trailhead is located at the Tipsoo Lake parking area, just off Highway 410 near Chinook Pass. A Northwest Forest Pass is required for parking. The area is well-marked and provides restroom facilities.</p>
<p><strong>Trail Overview</strong><br>Naches Peak Loop is a popular, scenic trail that offers spectacular views of Mount Rainier and the surrounding Cascades. The trail is well-maintained and circles Naches Peak, providing a relatively easy hike suitable for most ages and abilities.</p>
<p><strong>Scenic Highlights</strong><br>Starting the loop from the parking area in a clockwise direction offers the best views of Mount Rainier. The path meanders through vibrant wildflower meadows in the late summer, past small ponds, and over streams with clear, cold mountain water.</p>
<p><strong>Wildlife and Environment</strong><br>The area is rich in wildlife, including marmots, deer, and a variety of birds. Alpine flora is abundant, and the changing colors of the vegetation in autumn provide a breathtaking backdrop for hikers.</p>
<p><strong>Additional Tips</strong><br>This 3.2-mile loop has an elevation gain of 600 feet, making it a moderate hike. Dogs are not allowed on the trail, ensuring the preservation of the sensitive alpine environment. The trail is extremely popular, so arriving early or visiting on weekdays may offer a more tranquil experience. Be prepared for changing weather conditions at higher elevations, and always carry water and snacks.</p>"
)


oyster_dome = Trail.create!(
  name: "Oyster Dome",
  location: "Bow, WA",
  intensity: "Moderate",
  length: 5.0,
  elevation_gain: 1050,
  highest_point: 2025,
  dogs: true,
  pass: "Discover",
  summary: "<p><strong>Oyster Dome Trailhead</strong><br>The trailhead is located along Chuckanut Drive (State Route 11), south of Bellingham. The parking area is well-marked but can fill quickly, especially on weekends. A Discover Pass is required for parking.</p>
<p><strong>Trail Description</strong><br>Oyster Dome offers a moderate hike through a lush, densely forested area before opening up to the stunning scenic vistas for which it is famous. The trail is well-maintained but can be rocky and rooty, challenging hikers as they ascend.</p>
<p><strong>Scenic Viewpoints</strong><br>At the summit, hikers are rewarded with panoramic views of the San Juan Islands, the Olympic Mountains, and the Skagit Valley. The viewpoint provides a perfect spot for photography and is a popular place for lunch breaks.</p>
<p><strong>Additional Tips</strong><br>This 5-mile round trip hike has an elevation gain of 1050 feet. Dogs are allowed on the trail, making it a great option for hikers with pets. The trail is busiest during the summer months, so an early start is recommended to secure parking and enjoy a quieter hike. The trail can be muddy and slippery during the wet season, so appropriate footwear is essential. Hikers should also bring water and snacks, and be prepared for changing weather conditions at the summit.</p>"
)


twin_falls = Trail.create!(
  name: "Twin Falls",
  location: "North Bend, WA",
  intensity: "Easy",
  length: 2.4,
  elevation_gain: 940,
  highest_point: 1000,
  dogs: true,
  pass: "Discover",
  summary: "<p><strong>Twin Falls Trailhead</strong><br>The trailhead is located within Olallie State Park, just off I-90 near North Bend. The parking lot is spacious, but it can get crowded on weekends and sunny days. A Discover Pass is required for parking.</p>
<p><strong>Trail Description</strong><br>Twin Falls is an ideal hike for families and those looking for a short but rewarding outdoor experience. The trail is well-maintained and offers an easy walk with minimal elevation gain, making it accessible to hikers of all ages and abilities.</p>
<p><strong>Scenic Features</strong><br>The highlight of the hike is the series of waterfalls, particularly the impressive Twin Falls, which can be viewed from several points along the trail. The path also crosses a wooden bridge and offers several vantage points for enjoying the surrounding forest and river scenery.</p>
<p><strong>Additional Tips</strong><br>This 2.4-mile round trip hike has a moderate elevation gain of 940 feet. Dogs are allowed on the trail, making it a popular choice for hikers with pets. The trail can be busy, so an early start is recommended to enjoy a quieter experience. The area is particularly beautiful in the spring when the water flow is high and the surrounding vegetation is lush. Hikers should wear good walking shoes and bring water, especially on warmer days.</p>"
)


the_enchantments = Trail.create!(
  name: "The Enchantments",
  location: "Leavenworth, WA",
  intensity: "Hard",
  length: 18.0,
  elevation_gain: 4500,
  highest_point: 7800,
  dogs: false,
  pass: "Northwest Forest",
  summary: "<p><strong>The Enchantments Trailhead</strong><br>There are two main trailheads for The Enchantments: the Snow Lakes Trailhead and the Stuart Lake Trailhead, both located near Leavenworth. The parking areas require a Northwest Forest Pass, and due to the trail's popularity, early arrival is recommended to secure a spot.</p>
<p><strong>Trail Description</strong><br>The hike through The Enchantments is one of the most stunning and challenging treks in Washington State. The trail traverses a spectacular alpine landscape, passing through different ecological zones, from dense forests at lower elevations to rocky, glaciated alpine areas higher up.</p>
<p><strong>Scenic Highlights</strong><br>The route offers breathtaking views of jagged peaks, crystal-clear lakes, and lush meadows filled with wildflowers. Highlights include Prusik Peak, Colchuck Lake, and the numerous enchanting alpine lakes in the upper basin known collectively as The Enchantments.</p>
<p><strong>Wildlife and Environment</strong><br>The area is home to a rich variety of wildlife, including mountain goats, marmots, and diverse bird species. The fragile alpine environment is strictly protected, and hikers are required to adhere to Leave No Trace principles.</p>
<p><strong>Additional Tips</strong><br>This 18-mile hike is very strenuous, with an elevation gain of 4500 feet, and is best suited for experienced hikers. A permit is required for overnight camping during the peak season, obtained through a lottery system due to high demand. Day hikers do not need a permit but should start early to complete the hike before dark. Be prepared for sudden weather changes and bring appropriate gear for cold, possibly snowy conditions, even in summer.</p>"
)


snow_lakes = Trail.create!(
  name: "Snow Lakes",
  location: "Leavenworth, WA",
  intensity: "Hard",
  length: 14.0,
  elevation_gain: 4300,
  highest_point: 5500,
  dogs: false,
  pass: "Northwest Forest",
  summary: "<p><strong>Snow Lakes Trailhead</strong><br>The trailhead for Snow Lakes is located off Icicle Road in Leavenworth. This is one of the starting points for entering The Enchantments area. The parking area can fill up quickly during the hiking season, so arriving early is advisable. A Northwest Forest Pass is required for parking.</p>
<p><strong>Trail Description</strong><br>The hike to Snow Lakes is known for its significant elevation gain and challenging terrain, making it one of the tougher day hikes or overnight adventures in the area. The trail ascends steeply through dense forest before reaching the alpine zone where the views open up.</p>
<p><strong>Scenic Highlights</strong><br>Along the way, hikers will enjoy stunning views of rugged peaks and clear alpine waters. Snow Lakes itself is a serene and picturesque spot, surrounded by high cliffs and accessible via a demanding climb. The lake is the largest in the Enchantments area, offering breathtaking vistas and a peaceful environment for rest.</p>
<p><strong>Wildlife and Environment</strong><br>The trail passes through diverse ecological zones that are home to various wildlife, including mountain goats, which are often seen around the lakes. The area's delicate alpine vegetation requires hikers to follow strict Leave No Trace principles to protect the environment.</p>
<p><strong>Additional Tips</strong><br>This 14-mile round trip hike with an elevation gain of 4300 feet is classified as hard and is best suited for experienced hikers. Overnight hikers need a permit during the peak season, obtained through a lottery. Weather conditions in the high alpine can change rapidly, so hikers should be well-prepared with appropriate clothing, gear, and sufficient food and water. Starting early in the day is crucial to ensure enough daylight hours to complete the hike safely.</p>"
)


hannegan_pass = Trail.create!(
  name: "Hannegan Pass",
  location: "Glacier, WA",
  intensity: "Moderate",
  length: 10.4,
  elevation_gain: 3100,
  highest_point: 6200,
  dogs: true,
  pass: "Northwest Forest",
  summary: "<p><strong>Hannegan Pass Trailhead</strong><br>The trailhead is located at the end of Hannegan Pass Road, which branches off from the Mount Baker Highway. The road to the trailhead can be rough, so a vehicle with good clearance is recommended. A Northwest Forest Pass is required for parking.</p>
<p><strong>Trail Description</strong><br>The Hannegan Pass trail offers a moderate hike with a steady climb through old-growth forests before opening up to stunning alpine scenery. The trail is well-maintained, though it can be steep in places, making it a rewarding challenge for hikers.</p>
<p><strong>Scenic Highlights</strong><br>As the trail ascends, it offers expansive views of the surrounding peaks, including Mount Baker and Mount Shuksan. The pass itself serves as a gateway to further adventures in the North Cascades, with options to extend the hike to Hannegan Peak or continue into the remote Picket Range.</p>
<p><strong>Wildlife and Environment</strong><br>The area is known for its diverse wildlife, including marmots, deer, and occasionally black bears. Alpine meadows along the trail burst with wildflowers in late spring and early summer, adding to the scenic beauty of the hike.</p>
<p><strong>Additional Tips</strong><br>This 10.4-mile round trip hike has an elevation gain of 3100 feet. Dogs are allowed on the trail, making it a great option for hikers with pets. The trail can be busy on weekends, so starting early is recommended to avoid crowds and to enjoy a more serene experience. Hikers should be prepared for changing weather conditions at higher elevations and carry enough water and snacks for the journey.</p>"
)


mount_washington = Trail.create!(
  name: "Mount Washington",
  location: "Hood Canal, WA",
  intensity: "Hard",
  length: 4.0,
  elevation_gain: 3190,
  highest_point: 4400,
  dogs: true,
  pass: "Northwest Forest",
  summary: "<p><strong>Mount Washington Trailhead</strong><br>The trailhead for Mount Washington is located near Lake Cushman on the Olympic Peninsula. It's accessible via Forest Service roads that may require a vehicle with good clearance. A Northwest Forest Pass is required for parking.</p>
<p><strong>Trail Description</strong><br>This hike is known for its steep ascent, making it a challenging climb. The trail begins in a dense forest setting and quickly gains elevation through a series of switchbacks. The path is rugged, with rocky and root-filled sections that require careful navigation.</p>
<p><strong>Scenic Highlights</strong><br>As the trail climbs higher, it offers expansive views over the Hood Canal, the Olympic Mountains, and on clear days, the Puget Sound. The summit provides a panoramic vista that includes Mount Rainier to the southeast.</p>
<p><strong>Wildlife and Environment</strong><br>The area is home to a variety of wildlife, including black bears and mountain goats. Hikers are encouraged to be aware of their surroundings and to store food and scents appropriately.</p>
<p><strong>Additional Tips</strong><br>This 4-mile round trip hike has a substantial elevation gain of 3190 feet, rated as hard. Dogs are allowed on the trail, but they should be fit for steep, challenging terrain. Due to the intense incline and potentially hazardous trail conditions, proper hiking boots and trekking poles are highly recommended. Hikers should bring sufficient water and snacks and be prepared for variable weather conditions, especially at higher elevations.</p>"
)


#Reports

# User reports seed data for all trails






puts "Seed file is done!"

