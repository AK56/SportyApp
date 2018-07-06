# README

Sporty App let members to be part of different teams in an Organization. The current data is for an test organization called 'Bello High', which has some teams and have test members. The App currently is not restricted and anyone can access all three views:

Audience: General public's view is what the 'Members' link on the navbar is offering. It lists all members in the organization and the end user can view member profile details based on their Proile access if public/private. Each member's show view represents member's weekly sport participation activity alongside other details.

Organization: Shows weekly sport participation activity of all teams in the organization, displaying line charts for each team member's activity. An organization's admin access can be enabled to it, as this is to serve organization admin.

Member-Facing: You know what to expect when you click on 'Profile', and that's right it will be your sole profile info, where you can also edit your information. Alongside an interactive view part to add/remove your sport participation for a given sport on a given date. The database is seeded with some sports and the activity duration is also restricted from a 15min-3hr range. Tweak it some, and you will view your activity graph reflecting the changes once you 'update' your profile and land on 'show' view

The Stack:

* Built upon Rails 5.2.0 with Ruby 2.4

* Database is PostgreSQL

* Deployed to Heroku

* ...

Highlights:

* Utilizing Active Storage to hold images for app objects like members and sports. Storage platform is Google     Cloud.

* Using rails bootstrap-saas library to get going with a quick design holding header/footer

* Using chartkick to build dynamic member/team sport activity charts

* ..
