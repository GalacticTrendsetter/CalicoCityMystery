"Calico City Mystery" by TurtleCorn Productions
[rule setup]

A room has a text called AreaDef.

Include Rideable Vehicles by Graham Nelson.

the description of the player is "annoying."

[room setup]
	
	[The Country]

The Bunnies' Bedroom is a room. "The Bunnies['] Bedroom has a bunkbed against one wall for you and Liam Bunny, and a bed for each parent. Next to the bunkbed is a desk, and in front of the beds is a wardrobe. 

To your south is the living room."

The Bunnies' Living Room is a room. The Bunnies' Living Room is south of The Bunnies' Bedroom. "The Bunnies['] Living Room has a big couch, with two small couches on either side. There is a small coffee table with the TV as well as some toys and books. 

To your west is the front door and exit, and there are stairs leading up to the dining room and kitchen. To your north is the bedroom."

The Bunnies' Dining Room is a room. The Bunnies' Dining Room is above The Bunnies' Living Room. "The dining room table and chairs are wooden, and painted red. On the wall is a broom to help clean up the big messes that Liam Bunny makes. Along the wall is the kitchen. 

To your south is the bathroom, and there are stairs leading down to the living room."

The Bunnies' Bathroom is a room. The Bunnies' Bathroom is south of The Bunnies' Dining Room. "The bathroom has all the normal things in a bathroom. On the wall is a laundry machine and a vacuum cleaner. In the bathtub is a toy bath turtle.

To the north is the kitchen and dining room."

A Bunny Farm is a kind of room. The printed name of a Bunny Farm is usually "Bunnies['] Garden."

To say farm directions:
	repeat with that way running through directions:
		if the room that way from the location is a Bunny Farm,
			now that way is marked for listing;
	say "[a list of directions which are marked for listing]";
	now every direction is not marked for listing.

Garden1 is west of the Bunnies' Living room. "This part of the garden contains the stairs leading up to the entrance, and a tree with lots of birds and flowers. There is also a side gate that leads to the Bunnies['] outdoor gear. 

To your north, the garden continues, and you can see some vegetables and a pond. To your south is the carousel and the playground."

Garden2 is north of Garden1. "Here you can see Mommy Bunny[']s vegetable garden, and there are fruits and flowers growing there as well. There is also a cute pond next to the vegetable garden that is a nice place to take a swim.

To your northeast and south the garden continues. To the south is the front door of the house, and to the northeast is the outdoor patio. To your west is the road." 

Garden3 is northeast of Garden2. "The Bunnies['] patio has a nice table with a umbrella for shade, and a grill for cookouts. The Bunnies use this a lot when friends come over.

To your southwest the garden continues, with the pond and vegetable garden there."

Garden1, Garden2, and Garden3 are a Bunny Farm.

Bunnies' Car is an enterable vehicle in Garden1. Understand "Car" or "Bunny Car" or "Automobile" as Bunnies' Car. 

Instead of entering Bunnies' Car:
	say "You're not old enough to drive!"

Maeve's Bicycle is a rideable vehicle in Garden2. Understand "Maeve's Bike" or "Bike" or "Bicycle" as Maeve's Bicycle. 

The Country Road is a room. "This road leads downtown to the southwest. To your south is the Christmas Party Building, and to your east is the Bunny Family's garden." Country Road is west of Garden2. 

Christmas Party Area is south of Country Road. "In the Christmas Party Area, there is a bunch of Christmas trees and fun activities such as cookie decorating and making ornaments. It is currently a few weeks from Christmas, so the Party Area is feeling very lively. The room is full of holiday food.

To your north is the exit and the road, and to your south is the Christmas Theater."

Christmas Theater is south of Christmas Party Area. "The Christmas Theater has a big stage with lots of colorful lights. At the theater, Calicos are encouraged to sing along with their favorite carols!

To your east is the exit out to the Carousel. To your north is the party area, and to your south is the dance party."

Christmas Dance Party is south of Christmas Theater. "The Christmas Dance Party has a big disco floor and lights. Lots of Calicos love dancing here, and it gets more popular the closer it is to Christmas. The famous giant Calico Christmas tree is here as well, overlooking the disco floor.

To your north is the theater, and to your south is FunFun Meadow."

Carousel is east of Christmas Theater and south of Garden1. "The carousel is a fun place to hang out, both for the carousel and for the snacks. 

To the south is the Playstructure, to the west is the Christmas Theater, and to the north is the Bunnies['] Garden." Playstructure is south of Carousel. "The Playstructure is fun for all Calicos of all ages, and it was recently renovated.

To the north is the carousel."

A Meadow is a kind of room. The printed name of a Meadow is usually "FunFun Meadow". The AreaDef of a Meadow is "The FunFun meadow is a beautiful sunny green meadow full of brightly colored flowers. The Long River runs down the middle of FunFun Meadow. The FunFun Meadow is a great and popular place for picnics. 

The meadow extends to [meadow directions] from here.".

To say meadow directions:
	repeat with that way running through directions:
		if the room that way from the location is a Meadow,
			now that way is marked for listing;
	say "[a list of directions which are marked for listing]";
	now every direction is not marked for listing.

Meadow1 is south of Christmas Dance Party. "[AreaDef] To your west is the Calico Public Library, and to the east is FunFun Cafe." Meadow2 is south of Meadow1. "[AreaDef] To your west is the Calico Public Library, and to the east is FunFun Cafe." Meadow3 is south of Meadow2. "[AreaDef] To your east is Sundale Calico Grocery Store." Meadow4 is south of Meadow3. "[AreaDef] To your east is Shell Tinkle Clothing Store." Meadow1, Meadow2, Meadow3, and Meadow4 are A Meadow.

A Library is a kind of room. The printed name of a Library is usually "Calico Public Library". The AreaDef of a Library is "The Calico Public Library is always full of Calicos looking to check out a new book. (Or use the library computers.) There are different sections for each kind of book.

The library extends to [library directions] from here. To your east is FunFun Meadow.".

To say library directions:
	repeat with that way running through directions:
		if the room that way from the location is a Library,
			now that way is marked for listing;
	say "[a list of directions which are marked for listing]";
	now every direction is not marked for listing.
	
Books1 is west of Meadow1. "[AreaDef]". Books2 is west of Meadow2 and south of Books1. "[AreaDef]". Books1 and Books2 are A Library.

A Cafe is a kind of room. The printed name of a Cafe is usually "FunFun Cafe". The AreaDef of a Cafe is "The cafe extends to [Cafe directions] from here.".

To say Cafe directions:
	repeat with that way running through directions:
		if the room that way from the location is a Cafe,
			now that way is marked for listing;
	say "[a list of directions which are marked for listing]";
	now every direction is not marked for listing.
	
Cafe1 is east of Meadow1. "In front of you, there is the counter where you can order, and behind it is the kitchen full of delicious food and great smells. [AreaDef] To your west is FunFun Meadow."

Cafe2 is east of Meadow2 and south of Cafe1. "This area of the FunFun Cafe is the seating area where Calicos eat their delicious meals. On the wall is a picture of the original FunFun cafe. [AreaDef] To your west is FunFun Meadow."

Cafe1 and Cafe2 are A Cafe.

Sundale Calico Grocery Store is east of Meadow3. "The Sundale Calico Grocery Store is named after a famous Calico named Bluebell Sundale who created unique new ways to grow food. Inside is a delicious arrangement of food. Grocer Fox runs the store.

To the west is FunFun Meadow."

Shell Tinkle Clothing Store is east of Meadow4. "Shell Tinkle Clothing Store is run by the ponies. They have many fancy clothes there, and the ponies are always creating cool clothing. 

Behind the store to the east is the ponies' house, and to the west is FunFun Meadow."

A Ponyhouse is a kind of room. The printed name of a Ponyhouse is usually "The Pony House". The AreaDef of a Ponyhouse is "This house is where all of the ponies live, along with Grocer Fox. The room is full of beds, sewing tools, and toys. 

The pony house extends to [pony directions] from here.".

To say pony directions:
	repeat with that way running through directions:
		if the room that way from the location is a Ponyhouse,
			now that way is marked for listing;
	say "[a list of directions which are marked for listing]";
	now every direction is not marked for listing.
	
PoHo1 is east of Shell Tinkle Clothing Store. "[AreaDef] To the west is the Shell Tinkle Clothing Store." PoHo2 is north of PoHo1. "[AreaDef]". PoHo1 and PoHo2 are A Ponyhouse.

[road rules]

Instead of going southwest to riv1 when the player is not on Maeve's Bicycle:
	say "It's a bit too far to walk from here. Try riding a bike or driving.";
	
Instead of going northeast to Country Road when the player is not on Maeve's Bicycle:
	say "It's a bit too far to walk from here. Try riding a bike or driving.";

[next area]

A river is a kind of room. The printed name of a river is usually "Banks of the Calico River". The AreaDef of a River is usually "You are on the banks of the Calico River, which runs right through the middle of downtown. The Calico River is one of two rivers in Calico Town, the other being Long River. 

The river extends to [river directions] from here.".

To say river directions:
	repeat with that way running through directions:
		if the room that way from the location is a river,
			now that way is marked for listing;
	say "[a list of directions which are marked for listing]";
	now every direction is not marked for listing.
	
Riv1 is southwest of Country Road. "[AreaDef] To your south is the Hospital and Doctor's Office, and to your east is the Twisty N. Books Airport (TNB).". Riv2 is west of Riv1. Riv3 is south of Riv2. Riv1, Riv2, and Riv3 are a river.

Elevator to Ramen Store is southwest of Riv3. Calico Noodles is above Elevator to Ramen Store.

Calico School is south of Riv3. Diamond Society Jewelry Clubhouse is above Calico School.

Calico Bakery is southeast of Riv3. Calico Dance Studio is above Calico Bakery. Blackbird Art Studio is above Calico Dance Studio. 

Hospital is south of Riv1 and east of Riv3 and southeast of Riv2.

Hummingbird Doctor's Office is southeast of Hospital. Seabreezes' House is above Hummingbird Doctor's Office.

A airport is a kind of room. The printed name of a airport is usually "Twisty N. Books Airport". The AreaDef of a Airport is "The Twisty Nothing Books Airport, TNB, is the local airport of Calico Town. The relatively small airport has three airlines which service it: Air Calico, Sylvanian Airways, and Critter Airlines. 

The airport extends to [fly directions].".

To say fly directions:
	repeat with that way running through directions:
		if the room that way from the location is a airport,
			now that way is marked for listing;
	say "[a list of directions which are marked for listing]";
	now every direction is not marked for listing.
	
Arpt1 is east of Riv1. Arpt2 is south of Arpt1. Arpt1 and Arpt2 are a airport.

A CG is a kind of room. The printed name of a CG is usually "Calico City Garden". The AreaDef of a Cg is "The Calico City Garden is a nice community garden full of nice plants and flowers. The plants are planted by Calicos from all over the town. 

The garden extends to [CG directions].".

To say CG directions:
	repeat with that way running through directions:
		if the room that way from the location is a CG,
			now that way is marked for listing;
	say "[a list of directions which are marked for listing]";
	now every direction is not marked for listing.
	
cg1 is east of Arpt1. cg2 is south of cg1 and east of Arpt2. cg1 and cg2 are a CG.

Calico Field is south of cg2.

A BowlingAlley is a kind of room. The printed name of a BowlingAlley is usually "Sunriver Bowling Alley". The AreaDef of a BowlingAlley is "Loud crashing comes from a set of pins being knocked over. The room is full of bowling lanes and arcade games. 

The bowling alley is fairly large, and extends to [ba directions].".

To say ba directions:
	repeat with that way running through directions:
		if the room that way from the location is a BowlingAlley,
			now that way is marked for listing;
	say "[a list of directions which are marked for listing]";
	now every direction is not marked for listing.
	
Ba1 is southeast of cg2. Ba2 is east of Ba1. Ba1 and Ba2 are a BowlingAlley.

Calico Critter Clinic is east of cg2.

Kangaroos' Living Room is east of CG1. Kangaroos' Bedroom is above Kangaroos' Living Room. 

Persians' Dining Room is west of Riv2. Persians' Bathroom is south of Persians' Dining Room. Persians' Bedroom is above Persians' Dining Room. Persians' Living Room is south of Persians' Bedroom. 

Sandy Cats' Living Room is above Persians' Living Room. Sandy Cats' Dining Room is north of Sandy Cats' Living Room. Sandy Cats' Bedroom is above Sandy Cats' Dining Room. Sandy Cats' Balcony is south of Sandy Cats' Bedroom.
