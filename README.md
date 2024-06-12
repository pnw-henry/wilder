# WILDER
https://wilder.living/

Wilder is a React web application for discovering hiking trails, learning about them, and interacting with other users through hiking reports. Wilder leverages Amazon S3 to retrieve and serve its image content to users, Ruby on Rails for database management, and advanced CSS techniques to provide an elegant and practical user experience. With a growing userbase, Wilder aims to educate and help hikers find a suitable destination (currently mostly centered in Washington State), with the aim of putting more people in nature. The outdoors is for everyone, and with Wilder I aim to make that a reality.

## USAGE

The homepage gives users the ability to quickly search for a trail by name, see an assortment of random trails, and read the latest hiking reports. If they are logged in, and have saved a trail to their favorites, the trail won't be displayed in this section.

In All Trails, users can browse all currently available trails. Here, the option also exists to search for a trail by name. Additionally, users can filter out trails by difficulty, distance, and elevation gain. Clicking on a trail card reveals more information about that trail, including the required parking pass and whether or not dogs are allowed. If the user has an account and is signed in, they may submit a hiking report here.

The Login page has fields for username and password, and if the user doesn't have an account, they are given the option to create one. After the user logins, they can see a list of saved trails and all hiking reports they have submitted. The option to remove a saved trail or delete/edit a hiking report also exists here. 

## ROADMAP

A few upcoming features include...

Integrating a location framework to display nearby trails to the user rather than a random assortment.
Ability to sort trails by distance from a specified or current location.
Making hiking reports clickable for instances where the report text is long.
Giving users the ability to upload photos to their trip reports.
Password management.

## License

GPL-3.0
