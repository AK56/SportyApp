# README

Sporty App let members to be part of different teams in an Organization. The current set is for an test organization called 'Rocklin High', which has some teams and have test members. The App currently is not restricted and anyone can access all three views, but once login is enabled, then the three views offered would be:

Audience: General public's view is what the 'Members' link on the navbar is offering. It lists all members in the organization and the end user can view member profile details based on their Proile access if public/private. Each member's show view represents member's weekly sport participation activity alongside other details.

Organization: Shows sport participation activity of all teams in the organization displaying bar charts for each team categoring activity per members of the team as well. An organization's admin access can be enabled to it, as this is to server organization admin.

Member-Facing: You know what to expect when you click on 'Profile', and that's right it will be your sole profile info, where you can also edit your information. Alongside an interactive view part to add/remove your sport participation for a given sport on a given date. The current sports list is 'Baseball', Basketball' and 'Soccer' and the duration is also restricted from a 15min-3hr range. Tweak it some, and you will can view your activity grph reflecting the changes once you 'update' your profile and land on 'show' view

The Stack:

* Built upon Rails 5.2.0 with Ruby 2.4

* Database is MySQL (innoDB engine)

* Deployed to Heroku

* ...

Highlights:

* Utilizing Active Storage to hold images for app objects like members and sports

* Using rails bootstrap-saas library to get going with a quick design holding header/footer

* Using chartkick to build dynamic member/team sport activity charts

* ..