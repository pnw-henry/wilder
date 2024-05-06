puts "Seeding trails..."

easy_pass = Trail.create!(
  name: "Easy Pass",
  location: "Mazama, WA",
  intensity: "Hard",
  length: 7.0,
  elevation_gain: 2800,
  highest_point: 6500,
  dogs: true,
  pass: "Northwest Forest",
  summary: "<p><strong>Easy Pass Trail</strong><br>Access to the trailhead is via the North Cascades Highway, with parking available at the trailhead. The Easy Pass trail offers stunning alpine scenery and challenging terrain.</p>
            <p><strong>Initial Ascent</strong><br>The trail begins with a moderate incline, gradually ascending through lush forests filled with wildflowers in the spring and summer months. Hikers will cross several small streams along the way.</p>
            <p><strong>Alpine Meadows</strong><br>As the trail climbs higher, it emerges from the forest into expansive alpine meadows. Here, hikers are treated to breathtaking views of surrounding peaks and valleys.</p>
            <p><strong>Final Push to Easy Pass</strong><br>The final section of the trail becomes steeper as it approaches Easy Pass. Hikers will navigate rocky terrain and switchbacks before reaching the pass.</p>
            <p><strong>Easy Pass</strong><br>At Easy Pass, hikers are rewarded with panoramic views of the North Cascades and distant mountain ranges. The pass serves as a gateway to numerous other hiking trails and alpine lakes.</p>
            <p><strong>Additional Tips</strong><br>The round-trip distance is approximately 7.0 miles with an elevation gain of 2,800 feet, making it a challenging hike. Hikers should be prepared for variable weather conditions, including snow and high winds at higher elevations. Trekking poles and sturdy hiking boots are recommended for navigating rocky sections of the trail.</p>",
  latitude: 48.587901711822006,
  longitude: -120.80289632286967,
  place_id: "ChIJ3xT_j5WvhFQRmiyfbx3HUNA"
)

tolmie_peak = Trail.create!(
  name: "Tolmie Peak",
  location: "Ashford, WA",
  intensity: "Moderate",
  length: 7.5,
  elevation_gain: 1100,
  highest_point: 5900,
  dogs: false,
  pass: "National Park",
  summary: "<p><strong>Tolmie Peak Trail</strong><br>Access to the trailhead is via the Mowich Lake Road in Mount Rainier National Park. The Tolmie Peak trail offers scenic views of Mount Rainier and the surrounding alpine landscape.</p>
<p><strong>Initial Ascent</strong><br>The trail begins with a gradual incline through dense forests of fir and cedar. Hikers will pass by pristine alpine meadows dotted with wildflowers during the spring and summer months.</p>
<p><strong>Emerging Views</strong><br>As the trail climbs higher, views of Mount Rainier begin to emerge through gaps in the trees. Hikers will catch glimpses of glaciers and snow-capped peaks along the way.</p>
<p><strong>Tolmie Peak Lookout</strong><br>The highlight of the hike is the historic Tolmie Peak Fire Lookout, perched atop a rocky outcrop with commanding views of Eunice Lake and Mount Rainier. The lookout offers a perfect spot for a rest and a picnic.</p>
<p><strong>Return Hike</strong><br>After enjoying the views from Tolmie Peak, hikers can retrace their steps back to the trailhead. The descent offers different perspectives of the landscape, making it feel like a new experience.</p>
<p><strong>Additional Tips</strong><br>The round-trip distance is approximately 7.5 miles with a moderate elevation gain of 1,100 feet, making it suitable for hikers of all skill levels. While dogs are not allowed on the trail, it's a great option for families and nature enthusiasts. Hikers should carry plenty of water and snacks, as there are limited facilities along the trail.</p>",
  latitude: 46.93746842936068,
  longitude: -121.86761058520362,
  place_id: "ChIJFVGr9uLakFQR87-Ytej2r0U"
)

heather_lake = Trail.create!(
  name: "Heather Lake",
  location: "Granite Falls, WA",
  intensity: "Easy",
  length: 5.0,
  elevation_gain: 1034,
  highest_point: 2430,
  dogs: true,
  pass: "Northwest Forest",
  summary: "<p><strong>Heather Lake Trail</strong><br>Access to the trailhead is via the Mountain Loop Highway near Granite Falls, Washington. The Heather Lake trail offers a scenic and relatively easy hike through old-growth forests to a beautiful alpine lake.</p>
<p><strong>Forest Wander</strong><br>The trail begins with a gentle ascent through dense forests of cedar and hemlock. Hikers will be surrounded by towering trees and the sound of birdsong.</p>
<p><strong>Heather Lake</strong><br>After approximately 2.3 miles, hikers will reach the shores of Heather Lake. The lake is nestled in a picturesque basin surrounded by rocky cliffs and towering trees. It's a perfect spot for a picnic or a refreshing swim on a hot day.</p>
<p><strong>Return Hike</strong><br>After enjoying the tranquility of Heather Lake, hikers can retrace their steps back to the trailhead. The descent offers different perspectives of the forest and is generally easier than the ascent.</p>
<p><strong>Additional Tips</strong><br>The round-trip distance is approximately 5.0 miles with a moderate elevation gain of 1,034 feet, making it suitable for hikers of all skill levels. Dogs are allowed on the trail but must be kept on a leash. Hikers should bring plenty of water and insect repellent, especially during the summer months.</p>",
  latitude: 48.082848546137654,
  longitude: -121.77384711100204,
  place_id: "ChIJA8a3N5e1mlQRZCxj_ILY7cw"
)

sol_duc_falls = Trail.create!(
  name: "Sol Duc Falls",
  location: "Port Angeles, WA",
  intensity: "Easy",
  length: 1.6,
  elevation_gain: 200,
  highest_point: 1951,
  dogs: false,
  pass: "National Park",
  summary: "<p><strong>Sol Duc Falls Trail</strong><br>Access to the trailhead is via the Sol Duc Hot Springs Road in Olympic National Park near Port Angeles, Washington. The Sol Duc Falls trail offers a short and easy hike through lush rainforest to a stunning waterfall.</p>
<p><strong>Forest Stroll</strong><br>The trail begins with a gentle stroll through ancient forest, where hikers will be surrounded by towering trees, ferns, and moss-covered rocks. The sounds of birds and rushing water create a tranquil atmosphere.</p>
<p><strong>Sol Duc Falls</strong><br>After approximately 0.8 miles, hikers will reach Sol Duc Falls, a majestic waterfall cascading over rocky cliffs into a deep canyon. The viewing platform offers a perfect vantage point to admire the beauty and power of the falls.</p>
<p><strong>Return Hike</strong><br>After enjoying the spectacle of Sol Duc Falls, hikers can retrace their steps back to the trailhead. The trail is relatively flat and easy, making it suitable for hikers of all ages and abilities.</p>
<p><strong>Additional Tips</strong><br>The round-trip distance is approximately 1.6 miles with minimal elevation gain, making it a perfect option for families with young children or those looking for a leisurely hike. Dogs are not allowed on the trail, and hikers should stay on designated paths to protect the delicate ecosystem. Visitors can combine the hike with a visit to the nearby Sol Duc Hot Springs for a relaxing soak after their adventure.</p>",
  latitude: 47.95485475997189,
  longitude: -123.83494071671065,
  place_id: "ChIJGdEPJU5EjlQRTbp1mmUkxks"
)

little_si = Trail.create!(
  name: "Little Si",
  location: "North Bend, WA",
  intensity: "Easy",
  length: 3.7,
  elevation_gain: 1300,
  highest_point: 1550,
  dogs: true,
  pass: "Discover",
  summary: "<p><strong>Little Si Trail</strong><br>Access to the trailhead is via the Mount Si Road near North Bend, Washington. The Little Si trail offers a moderately challenging hike with rewarding views of the surrounding Cascade Mountains.</p>
<p><strong>Initial Climb</strong><br>The trail begins with a steady ascent through dense forest, with occasional switchbacks to help ease the incline. Hikers will pass by moss-covered boulders and towering trees along the way.</p>
<p><strong>Rocky Outcrops</strong><br>As the trail climbs higher, it emerges onto rocky outcrops with views of the Snoqualmie Valley below. Hikers can catch their breath and enjoy the scenery before continuing onward.</p>
<p><strong>Little Si Summit</strong><br>The highlight of the hike is the summit of Little Si, which offers panoramic views of Mount Si, Rattlesnake Ridge, and the surrounding peaks. It's a perfect spot for a snack break and some photos.</p>
<p><strong>Return Hike</strong><br>After soaking in the views, hikers can retrace their steps back to the trailhead. The descent is generally easier than the ascent but requires careful footing on rocky sections of the trail.</p>
<p><strong>Additional Tips</strong><br>The round-trip distance is approximately 3.7 miles with an elevation gain of 1,300 feet, making it a moderate hike suitable for hikers of all levels. Dogs are allowed on the trail but must be kept on a leash. Hikers should bring plenty of water and wear sturdy footwear, as the trail can be rocky and uneven in places.</p>",
  latitude: 47.48684447118352,
  longitude: -121.75396294568226,
  place_id: "ChIJVVWVuH9-kFQRhwSRG6quV-4"
)

talapus_and_olallie = Trail.create!(
  name: "Talapus and Olallie Lakes",
  location: "North Bend, WA",
  intensity: "Easy",
  length: 6.2,
  elevation_gain: 1220,
  highest_point: 3780,
  dogs: true,
  pass: "Northwest Forest",
  summary: "<p><strong>Talapus and Olallie Lakes Trail</strong><br>Access to the trailhead is via the Talapus Lake Road near North Bend, Washington. The Talapus and Olallie Lakes trail offers a scenic and relatively easy hike to two beautiful alpine lakes in the Cascade Mountains.</p>
<p><strong>Forest Wander</strong><br>The trail begins with a gentle ascent through lush forest, where hikers will be surrounded by towering trees and the sound of birdsong. The trail is well-maintained and easy to follow.</p>
<p><strong>Talapus Lake</strong><br>After approximately 2.5 miles, hikers will reach Talapus Lake, a serene alpine lake nestled in a picturesque basin. The clear blue waters of the lake are perfect for swimming or simply relaxing on the shore.</p>
<p><strong>Olallie Lake</strong><br>From Talapus Lake, the trail continues onward to Olallie Lake, another beautiful alpine lake surrounded by rocky cliffs and towering trees. Hikers can enjoy a picnic lunch and soak in the mountain views.</p>
<p><strong>Return Hike</strong><br>After exploring the lakes, hikers can retrace their steps back to the trailhead. The descent is gentle and offers different perspectives of the surrounding forest.</p>
<p><strong>Additional Tips</strong><br>The round-trip distance is approximately 6.2 miles with a moderate elevation gain of 1,220 feet, making it suitable for hikers of all skill levels. Dogs are allowed on the trail but must be kept on a leash. Hikers should bring plenty of water and snacks, as there are limited facilities along the trail.</p>",
  latitude: 47.4011518209176,
  longitude: -121.5185409926137,
  place_id: "ChIJaSnixnGCkFQRcuL8JtVclx0"
)

Napali_coast = Trail.create!(
  name: "Na Pali Coast",
  location: "Kauai, HI",
  intensity: "Hard",
  length: 19.8,
  elevation_gain: 6512,
  highest_point: 4284,
  dogs: false,
  pass: "State",
  summary: "<p><strong>Na Pali Coast via Kalalau Trail</strong><br>Access to the trailhead is at the end of Highway 56 on the north shore of Kauai, Hawaii. The Na Pali Coast via Kalalau Trail is a challenging and breathtaking hike along one of the most stunning coastlines in the world.</p>
<p><strong>Scenic Beauty</strong><br>The trail begins with a steep descent through lush rainforest, offering glimpses of towering cliffs and turquoise waters below. Hikers will be treated to panoramic views of the Na Pali Coastline at every turn.</p>
<p><strong>Hanakapiai Beach</strong><br>After approximately 2 miles, hikers will reach Hanakapiai Beach, a beautiful stretch of golden sand surrounded by towering sea cliffs. It's a perfect spot for a rest and a swim, but be cautious of strong currents.</p>
<p><strong>Hanakapiai Falls</strong><br>For those seeking an additional challenge, a side trail leads to Hanakapiai Falls, a stunning 300-foot waterfall nestled deep in the jungle. The trail is steep and slippery, but the reward is worth the effort.</p>
<p><strong>Kalalau Beach</strong><br>After passing Hanakapiai Beach, the trail continues onward to Kalalau Beach, a remote and pristine stretch of coastline accessible only by foot or boat. Camping is permitted on the beach with a valid permit.</p>
<p><strong>Return Hike</strong><br>The hike to Kalalau Beach and back is approximately 22 miles round-trip, so hikers should be prepared for a long day or consider camping overnight. The return hike offers different perspectives of the coastline and is equally stunning.</p>
<p><strong>Additional Tips</strong><br>The Na Pali Coast via Kalalau Trail is considered one of the most challenging hikes in Hawaii, with steep terrain, narrow cliffs, and unpredictable weather. Hikers should be in good physical condition and prepared with plenty of water, food, and essential gear. Permits are required for hiking and camping along the trail and can be obtained through the Hawaii State Parks website.</p>",
  latitude: 22.220390156379917,
  longitude: -159.5826419890947,
  place_id: "ChIJwZ-hVfL5BnwRetDfDF4eUQo"
)

puts "Trails seeded!"


