"Calico City" by TurtleCorn Productions
[rule setup]

When play begins:
	now the right hand status line is "[time of day]";
	now the time of day is 8:00 am.

The Bunnies' Bedroom is a room. "The Bunnies['] Bedroom has a bunkbed against one wall for you and Liam Bunny, and a bed for each parent. Next to the bunkbed is a desk, and in front of the beds is a wardrobe. [line break][line break]To your south is the living room."

The story headline is "A peek into Calico Life"

A person has a time called SleepLate. The SleepLate of a person is usually 3:00 am.

A person has a time called SleepEarly. The SleepEarly of a person is usually 7:00 pm. 

A person has a number called TimeSpent. 

A room has a text called AreaDef.

A person is either awake or asleep. A person is usually awake.
[Hanging around until is an action applying to one time.

Check hanging around until: 
	if the time of day is the time understood, say "It is [time understood] now!" instead; 
	if the time of day is after the time understood, say "It is too late for that now." instead.

Carry out hanging around until: 
	while the time of day is before the time understood: 
		increase the time of day by one minute
		
Report hanging around until: 
	say "You stand around until [time understood]."
Understand "wait until [time]" as hanging around until.]

Include Rideable Vehicles by Graham Nelson.

Include Variable Time Control by Eric Eve.

A bed is a kind of thing. A bed is either usable or unusable. A bed is usually usable.

Instead of sleeping:
	if the player can see a usable bed: 
		if the time of day is after the SleepEarly of the player:
			now the time of day is a random time from 7:00 am to 7:59 am;
			say "You get into bed and drift off, and when you wake up, it is [time of day + 1 minute].";
		otherwise:
			say "Sorry, but now's not the time for sleeping.";
	otherwise:
		if the player can see a bed:
			say "I don't know if you'll be allowed to sleep here.";
		otherwise:
			say "What would you sleep on?"

[Include Computers by Emily Short.]

the description of the player is "annoying."

Understand "climb" or "climb up" as climbing.

A person has a room called destination.

A person is either passive or active. A person is usually active.

A person is either SpokenTo or NotSpokenTo. A person is usually NotSpokenTo.

A person is either Helpful or Unhelpful. A person is usually helpful.

Waiting more is an action applying to one number. Understand "wait [a time period]" or "wait for [a time period]" or "wait for a/an [a time period]" or "wait a/an [a time period]" as waiting more.

carry out waiting more:
	let the target time be the time of day plus the time understood;
	decrease the target time by one minute;
	while the time of day is not the target time:
		follow the turn sequence rules.
				
report waiting more:
	say "It is now [time of day + 1 minute]."
	
check waiting more:
	if the time understood is greater than one hour, say "Your patience isn't quite good enough to wait that long." instead.

A shop is a kind of room. A shop has a time called the opening hour. The opening hour of the shop is usually 8:00 am. A shop has a time called the closing hour. A shop usually has a closing hour 6:00 pm. A shop has a room called the TargetRoom. Shell Tinkle Clothing Store, Sundale Calico Grocery Store, Calico Bakery, Calico Noodles, and dock are a shop.

Check going to a shop (called the target):
	if the time of day is before the opening hour of the target:
		say "[the target] is closed until [the opening hour of the target]." instead;
	if the time of day is after the closing hour of the target:
		say "[the target] has been closed since [the closing hour of the target] and won't be open until tomorrow at [the opening hour of the target]." instead.
		
Every turn when the location is a shop:
	let deadline be the closing hour of the location;
	let the targetroom be a random adjacent room which is not a shop;
	if the deadline is before the time of day:
		say "You are gently led out of the store, as [the location] is closing right now.";
		move the player to the TargetRoom.

Talking to is an action applying to one visible thing. Understand "Talk to [someone]" or "Speak with [someone]" or "talk [someone]" or "speak [someone]" or "start conversation with [someone]" as talking to.

Price is a kind of value. *1000 specifies a price. A thing has a price. The price of a thing is usually *0. After examining something for sale, say "You can buy it for [the price of the noun]."

Definition: a thing is free if the price of it is *0.
Definition: a thing is for sale if it is not free.

Instead of taking something for sale:
	say "You have to pay for [the noun]."
	
Before buying something for sale when the money is not in the wallet: 
	say "You're broke." instead.

Before buying something for sale when the money is free: 
	say "You're broke." instead.

Before buying something for sale when the price of the money is less than the price of the noun:
	say "You don't have enough to buy [the noun]." instead.

Instead of buying something:
	decrease the price of the money by the price of the noun;
	say "You pay [the price of the noun] and buy [the noun], leaving you with [the price of the money].";
	if the money is free:
		now the money is nowhere;
	now the price of the noun is *0;
	now the player is carrying the noun.
	
The player carries  a wallet. the wallet contains money. the price of the money is *10. The printed name of the money is "[price of the money] in cash." Understand "cash" as the money. 

Instead of taking the money:
	say "Just leave it alone until you need to buy something."
	
Instead of buying something free:
	say "[the noun] is yours."
	
Instead of buying the money:
	say "It'll be one gold sequin for this silver sequin. [line break][line break]...just kidding."

[room setup]
	
	[The Country]
	
The Bunkbed is a bed in the bunnies' bedroom. Understand "Bunkbed" or "Bunk" as The Bunkbed.

The Bunnies' Living Room is a room. The Bunnies' Living Room is south of The Bunnies' Bedroom. "The Bunnies['] Living Room has a big couch, with two small couches on either side. There is a small coffee table with the TV as well as some toys and books. [line break][line break]To your west is the front door and exit, and there are stairs leading up to the dining room and kitchen. To your north is the bedroom."

[Mommy's laptop is a laptop in The Bunnies' Bedroom. Description is "The laptop looks slightly old and used. Attached to the laptop is a sticky note that says 'Password - BunnyBest333'."

Mommy's laptop runs a password lock program called laptop security. Laptop security is privately-named. The password of laptop security is “BunnyBest333”.

Mommy's laptop runs an email program called laptop email. Laptop email is privately-named.

The message table of laptop email is Table of Laptop Messages.

Table of Laptop Messages
topic	message	arrival time	read	answered	description
“Maeve meeting with Angel”	“Maeve Meeting With Angel”	9:00 AM	false	false	“[MWA]”
“Boarding Passes”	“Boarding Passes”	9:04 AM	false	false	“[BPCA]”
"Fourth of July" 	"Fourth of July"	9:07 AM	false	false	"[FoJ]"
"Fourth of July Sale"	"Fourth of July Sale"	9:08 AM	false	false	"[Junk]"

MWA is a text variable. MWA is "Angel is free today, does Maeve want to meet? We can meet anywhere, but at 4 o'clock we are going sailing, so we should meet before then. Angel wants to meet at FunFun Meadow or the playground. -Mommy Rabbit"

BPCA is a text variable. BPCA is "Attached below are your tickets and boarding passes for flight 322 to Sand Park City. Thank you for flying with Sylvanian Airways. -sylvanianairways.com"

FoJ is a text variable. FoJ is "For the Fourth of July celebration, I think we should all meet at FunFun Meadow. If anyone has a reason that they can't go, please RSVP so I know. The Bunnies will bring the hot dogs and burgers, the Rabbits will bring the buns and condiments, the Persians will bring the fireworks, the Cats will bring dessert, the ponies will bring salad and we will bring tables and chairs. -Mommy Kangaroo"

Junk is a text variable. Junk is "Today, go to the Sundale Calico Grocery store for a special Fourth of July sale!!! Get 50% off all purchases today! -sundalegrocerystore.com"

Instead of email-replying, say "I feel like replying to your mom's emails is a bad idea."]

The Bunnies' Dining Room is a room. The Bunnies' Dining Room is above The Bunnies' Living Room. "The dining room table and chairs are wooden, and painted red. On the wall is a broom to help clean up the big messes that Liam Bunny makes. Along the wall is the kitchen. 

To your south is the bathroom, and there are stairs leading down to the living room."

Daddy Bunny is a man in the Bunnies' Living Room. The destination of Daddy Bunny is ba1. Daddy Bunny is active. TimeSpent of Daddy Bunny is 1. 

Every turn while Daddy Bunny is in ba1:
	now the TimeSpent of Daddy Bunny is TimeSpent of Daddy Bunny + 1;
Every turn while Daddy Bunny is in Sundale Calico Grocery Store:
	now the TimeSpent of Daddy Bunny is TimeSpent of Daddy Bunny + 1;
Every turn while Daddy Bunny is in Books1:
	now the TimeSpent of Daddy Bunny is TimeSpent of Daddy Bunny + 1;

Every turn while Daddy Bunny is active:
	let the right direction be the best route from the location of Daddy Bunny to the destination of Daddy Bunny;
	if the Destination of Daddy Bunny is the location of Daddy Bunny:
		if location of Daddy Bunny is ba1 and TimeSpent of Daddy Bunny is 120:
			now the destination of Daddy Bunny is Sundale Calico Grocery Store;
			now the TimeSpent of Daddy Bunny is 0;
		if location of Daddy Bunny is Sundale Calico Grocery Store and TimeSpent of Daddy Bunny is 15:
			now the destination of Daddy Bunny is books1;
			now the TimeSpent of Daddy Bunny is 0;
		if location of Daddy Bunny is Books1 and TimeSpent of Daddy Bunny is 10:
			now the destination of Daddy Bunny is Bunnies' Living Room;
			now the TimeSpent of Daddy Bunny is 0;
		if location of Daddy Bunny is Bunnies' Living Room:
			now the destination of Daddy Bunny is ba1;
			now the TimeSpent of Daddy Bunny is 0;
		if the time of day is after 6:30 pm:
			now the destination of Daddy Bunny is Bunnies' Bedroom;
			now the TimeSpent of Daddy Bunny is 0;
		if the time of day is 8:00 am:
			now the TimeSpent of Daddy Bunny is 0;
			now the destination of Daddy Bunny is ba1;
			say "Daddy Bunny wakes up and starts heading to the bowling alley.";
	otherwise:
		try Daddy Bunny going the right direction.

Instead of doing something to Daddy Bunny:
	say "(Daddy Bunny) ??? he gives u monee";
	increase the price of the money by *4;
	now Daddy Bunny is passive.

Every turn while Daddy Bunny is passive, now Daddy Bunny is active.

The Bunnies' Bathroom is a room. The Bunnies' Bathroom is south of The Bunnies' Dining Room. "The bathroom has all the normal things in a bathroom. On the wall is a laundry machine. In the bathtub is a toy bath turtle.

To the north is the kitchen and dining room."

A Bunny Farm is a kind of room. The printed name of a Bunny Farm is usually "Bunnies['] Garden."

To say farm directions:
	repeat with that way running through directions:
		if the room that way from the location is a Bunny Farm,
			now that way is marked for listing;
	say "[a list of directions which are marked for listing]";
	now every direction is not marked for listing.

Garden1 is west of the Bunnies' Living room. "This part of the garden contains the stairs leading up to the entrance, and a tree with lots of birds and flowers. There is also a side gate that leads to the Bunnies['] outdoor gear.  [line break][line break]To your north, the garden continues, and you can see some vegetables and a pond. To your south is the carousel and the playground."

Garden2 is north of Garden1. "Here you can see Mommy Bunny[']s vegetable garden, and there are fruits and flowers growing there as well. There is also a cute pond next to the vegetable garden that is a nice place to take a swim.[line break][line break]To your northeast and south the garden continues. To the south is the front door of the house, and to the northeast is the outdoor patio. To your west is the road." 

Garden3 is northeast of Garden2. "The Bunnies['] patio has a nice table with a umbrella for shade, and a grill for cookouts. The Bunnies use this a lot when friends come over.[line break][line break]To your southwest the garden continues, with the pond and vegetable garden there."

Garden1, Garden2, and Garden3 are a Bunny Farm.

Bunnies' Car is an enterable vehicle in Garden1. Understand "Car" or "Bunny Car" or "Automobile" as Bunnies' Car. 

Instead of entering Bunnies' Car:
	say "You're not old enough to drive!"

Maeve's Bicycle is a rideable vehicle in Garden2. Understand "Maeve's Bike" or "Bike" or "Bicycle" as Maeve's Bicycle. 

The Country Road is a room. "This road leads downtown to the southwest. To your south is the Christmas Party Building, and to your east is the Bunny Family's garden." Country Road is west of Garden2. 

Christmas Party Area is south of Country Road. "In the Christmas Party Area, there is a bunch of Christmas trees and fun activities such as cookie decorating and making ornaments. It is currently a few weeks from Christmas, so the Party Area is feeling very lively. The room is full of holiday food.[line break][line break]To your north is the exit and the road, and to your south is the Christmas Theater."

Christmas Theater is south of Christmas Party Area. "The Christmas Theater has a big stage with lots of colorful lights. At the theater, Calicos are encouraged to sing along with their favorite carols![line break][line break]To your east is the exit out to the Carousel. To your north is the party area, and to your south is the dance party."

Christmas Dance Party is south of Christmas Theater. "The Christmas Dance Party has a big disco floor and lights. Lots of Calicos love dancing here, and it gets more popular the closer it is to Christmas. The famous giant Calico Christmas tree is here as well, overlooking the disco floor.[line break][line break]To your north is the theater, and to your south is FunFun Meadow."

Carousel is east of Christmas Theater and south of Garden1. "The carousel is a fun place to hang out, both for the carousel and for the snacks. 

To the south is the Playstructure, to the west is the Christmas Theater, and to the north is the Bunnies['] Garden." Playstructure is south of Carousel. "The Playstructure is fun for all Calicos of all ages, and it was recently renovated.[line break][line break]To the north is the carousel."

A Meadow is a kind of room. The printed name of a Meadow is usually "FunFun Meadow". The AreaDef of a Meadow is "The FunFun meadow is a beautiful sunny green meadow full of brightly colored flowers. The Long River runs down the middle of FunFun Meadow. The FunFun Meadow is a great and popular place for picnics. [line break][line break]The meadow extends to [meadow directions] from here.".

To say meadow directions:
	repeat with that way running through directions:
		if the room that way from the location is a Meadow,
			now that way is marked for listing;
	say "[a list of directions which are marked for listing]";
	now every direction is not marked for listing.

Meadow1 is south of Christmas Dance Party. "[AreaDef] To your west is the Calico Public Library, and to the east is FunFun Cafe." Meadow2 is south of Meadow1. "[AreaDef] To your west is the Calico Public Library, and to the east is FunFun Cafe." Meadow3 is south of Meadow2. "[AreaDef] To your east is Sundale Calico Grocery Store." Meadow4 is south of Meadow3. "[AreaDef] To your east is Shell Tinkle Clothing Store. To your south is the dock, and southeast is the beach." Meadow1, Meadow2, Meadow3, and Meadow4 are A Meadow.

A Library is a kind of room. The printed name of a Library is usually "Calico Public Library". The AreaDef of a Library is "The Calico Public Library is always full of Calicos looking to check out a new book. (Or use the library computers.) There are different sections for each kind of book.[line break][line break]The library extends to [library directions] from here. To your east is FunFun Meadow.".

To say library directions:
	repeat with that way running through directions:
		if the room that way from the location is a Library,
			now that way is marked for listing;
	say "[a list of directions which are marked for listing]";
	now every direction is not marked for listing.
	
Books1 is west of Meadow1. "[AreaDef]". Books2 is west of Meadow2 and south of Books1. "[AreaDef]". Books1 and Books2 are A Library.

A Cafe is a kind of room. The printed name of a Cafe is usually "FunFun Cafe". The AreaDef of a Cafe is "The cafe extends to [Cafe directions] from here.". A cafe room is a shop.

To say Cafe directions:
	repeat with that way running through directions:
		if the room that way from the location is a Cafe,
			now that way is marked for listing;
	say "[a list of directions which are marked for listing]";
	now every direction is not marked for listing.
	
Cafe1 is east of Meadow1. "In front of you, there is the counter where you can order, and behind it is the kitchen full of delicious food and great smells. [AreaDef] To your west is FunFun Meadow."

Mommy Bunny is a woman in Cafe1. Description is "Your mom, Mommy Bunny, works at FunFun cafe along with Mommy Rabbit."

Cafe2 is east of Meadow2 and south of Cafe1. "This area of the FunFun Cafe is the seating area where Calicos eat their delicious meals. On the wall is a picture of the original FunFun cafe. [AreaDef] To your west is FunFun Meadow." 

Cafe1 and Cafe2 are A Cafe.

Sundale Calico Grocery Store is east of Meadow3. "The Sundale Calico Grocery Store is named after a famous Calico named Bluebell Sundale who created unique new ways to grow food. Inside is a delicious arrangement of food. Grocer Fox runs the store.[line break][line break]To the west is FunFun Meadow."

Shell Tinkle Clothing Store is east of Meadow4. "Shell Tinkle Clothing Store is run by the ponies. They have many fancy clothes there, and the ponies are always creating cool clothing. [line break][line break]Behind the store to the east is the ponies' house, and to the west is FunFun Meadow."

A Ponyhouse is a kind of room. The printed name of a Ponyhouse is usually "The Pony House". The AreaDef of a Ponyhouse is "This house is where all of the ponies live, along with Grocer Fox. The room is full of beds, sewing tools, and toys. [line break][line break]The pony house extends to [pony directions] from here.".

To say pony directions:
	repeat with that way running through directions:
		if the room that way from the location is a Ponyhouse,
			now that way is marked for listing;
	say "[a list of directions which are marked for listing]";
	now every direction is not marked for listing.
	
PoHo1 is east of Shell Tinkle Clothing Store. "[AreaDef] To the west is the Shell Tinkle Clothing Store." PoHo2 is north of PoHo1. "[AreaDef]". PoHo1 and PoHo2 are A Ponyhouse.

Dock is south of Meadow4. "it s a dock."

Beach is southeast of Meadow4 and east of Dock. "it s a becah"

[road rules]

Instead of going southwest to riv1 when the player is not on Maeve's Bicycle:
	say "It's a bit too far to walk from here. Try riding a bike or driving.";
	
Instead of going northeast to Country Road when the player is not on Maeve's Bicycle:
	say "It's a bit too far to walk from here. Try riding a bike or driving.";

[next area]

A river is a kind of room. The printed name of a river is usually "Banks of the Calico River". The AreaDef of a River is usually "You are on the banks of the Calico River, which runs right through the middle of downtown. The Calico River is one of two rivers in Calico Town, the other being Long River. [line break][line break]The river extends to [river directions] from here.".

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

A airport is a kind of room. The printed name of a airport is usually "Twisty N. Books Airport". The AreaDef of a Airport is "The Twisty Nothing Books Airport, TNB, is the local airport of Calico Town. The relatively small airport has three airlines which service it: Air Calico, Sylvanian Airways, and Critter Airlines. [line break][line break]The airport extends to [fly directions].".

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

A BowlingAlley is a kind of room. The printed name of a BowlingAlley is usually "Sunriver Bowling Alley". The AreaDef of a BowlingAlley is "Loud crashing comes from a set of pins being knocked over. The room is full of bowling lanes and arcade games. [line break][line break]The bowling alley is fairly large, and extends to [ba directions].". A BowlingAlley room is a shop.

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
