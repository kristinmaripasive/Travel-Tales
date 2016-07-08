Thought.destroy_all
Location.destroy_all

  locations = Location.create([
    { name: 'Chicago, IL', photo_url: "https://upload.wikimedia.org/wikipedia/commons/e/e8/20090524_Buildings_along_Chicago_River_line_the_south_border_of_the_Near_North_Side_and_Streeterville_and_the_north_border_of_Chicago_Loop,_Lakeshore_East_and_Illinois_Center.jpg", has_been: true},
    { name: 'Detroit, MI', photo_url: "http://static.squarespace.com/static/5269b4ece4b07233cf87987d/t/549d97e5e4b00eab7b2b2ec3/1419614181981/Detroit_Downtown_Sports_Zone_2013.jpg", has_been: false}
  ])
  thoughts = Thought.create([
    {title: 'First Thought', author: 'Kristin', body: 'I love this place!', has_been: true, location: locations[0]},
    {title: 'Second Thought', author: 'Kris', body: 'Sounds cool. I wanna go!', has_been: false, location: locations[0]},
  ])
