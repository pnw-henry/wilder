puts "Seeding trails..."

place_ids = {
  "Ancient Lakes": "ChIJEzxcVJR5mVQRtZpYrA0sIbo",
  "Blanca Lake": "ChIJIXRYJs3pmlQRQe-B5C64NIM",
  "Snow Lake": "ChIJy2I2Ilt5mlQRpixoWNvSipI",
  "Lake 22": "ChIJ2bgmAfS1mlQR1h4lAcCFYzM",
  "Annette Lake": "ChIJ7w4TMHt4mlQRcY0z9v10cGQ",
  "Fremont Lookout": "ChIJFTrpzCrJkFQR3NgKuX1O12Y",
  "Gothic Basin": "ChIJmTp1zADFmlQRXYOS4taHeeA",
  "Hidden Lake Lookout": "ChIJXcLdOQDFhFQRlk18CjmmMA8",
  "Mailbox Peak": "ChIJ_UH4IIOAkFQRP0_RdWQyTpA",
  "Lake Serene": "ChIJJ0eUz3yWmlQR_ZngRxUuFH8",
  "Lake Ingalls": "ChIJpfn7aQNCmlQRbjEGy5dj8KM",
  "Mount Storm King": "ChIJ_YqBbLRRjlQRCaux3IpEIqo",
  "Park Butte": "ChIJYw6UNFj8hFQRO9oGV1ssKhk",
  "Rachel Lake": "ChIJ18FFB4lwmlQREyK1e6qMAkI",
  "Cutthroat Pass": "ChIJTdiIvZSthFQRgV0d8FxliPg",
  "Colchuck Lake": "ChIJme9aFRdFmlQRqSnL6Cb-ohc",
  "Boulder River": "ChIJKzGbpP8whVQRweiVXccTGsE",
  "Bandera Mountain": "ChIJY9dA75CBkFQRPfJ97eXDNpg",
  "Beckler Peak": "ChIJxcCY9t_ymlQRDWxWBE9RfyE",
  "Blue Lake": "ChIJ2an531ashFQR6gJv7G4z0iE",
  "Goat Lake": "ChIJ69q7aOIfl1QR6MNEYruZ74Q",
  "Index Town Wall": "ChIJCzNKf3eWmlQR7qj5DagPklA",
  "Maple Pass Loop": "ChIJ93W2CZOthFQRrCvMHn45gSM",
  "Melakwa Lake": "ChIJXWlFHAJ5mlQRWkOk1R1Vs38",
  "Mount Pilchuck": "ChIJ5cqgdU60mlQR6wR3ZquMeqo",
  "Mount Si": "ChIJ3c0jw2d-kFQRfdw7OZETVMg",
  "Poo Poo Point": "ChIJ52Dlp7FlkFQRBqLZdyZKY_8",
  "Mason Lake": "ChIJY9dA75CBkFQRPfJ97eXDNpg",
  "Rattlesnake Ledge": "ChIJjX4tbm2HkFQRW1h5setWbI4",
  "Monte Cristo Ghost Town": "ChIJ7-y0zgDFmlQRLJbTgqwcVIM",
  "Naches Peak Loop": "ChIJF2Qm11TKkFQRk7mKUtTBAOo",
  "Oyster Dome": "ChIJwQ8vWCR1hVQRWZTAjSEzs6Q",
  "Twin Falls": "ChIJt2U6oK6AkFQRgl7sB4F-6Mc",
  "The Enchantments": "ChIJme9aFRdFmlQRqSnL6Cb-ohc",
  "Snow Lakes": "ChIJBwR0DlVOmlQRb4I9PjV2o5Q",
  "Hannegan Pass": "ChIJ9fYrlYtfhFQRgmtE3y1A1xM",
  "Mount Washington": "ChIJiaWG-DjbkVQRb1GXF4x58bw"
}

place_ids.each do |name, place_id|
  Trail.find_by(name: name).update!(place_id: place_id)
end

puts "Trails seeded!"


