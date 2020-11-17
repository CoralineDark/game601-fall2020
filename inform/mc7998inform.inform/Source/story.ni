"A Walk through the Woods" 

Release along with the "Quixe" interpreter.

[This section details the entrance] 
The parking lot is a room. "It's a beautiful day in the middle of Autumn and you've decided to take a day trip to go hiking deep in the White Mountains of New Hampshire along the Kancamangus Highway. With the leaves slowly falling around you in vibrant shades of red, yellow, and orange, and the air crisp and chilly, you are excited to see that it is peak leaf season. You've parked your car in a small, dirt parking lot and have walked up to the entrance of a small batch of intertwining trails. From the entrance, you see you can either go forward to the north, left to the west, or right to the east. There is also a box at the entrance labled 'Map'."

The box is in the parking lot. The box is a container. The box contains a map.  The description of the map is "The map shows that there are three separate trails. In the left trail, there is a river and a camp grounds. In the middle trail, there is a bridge and a rock clearing with picinic tables. And finally, in the right trail, there is an open field and a famously large tree." 

[This section details the Left Path] 
The Left Path is a room.  The Left Path is west of the parking lot. The Left Path is southwest of the Middle Path. "You walk into the western most trail in the area and see that you are surrounded by many tall, thick oaks. To the northwest, you can see a path leading to a small empty camp ground, while straight off to the west, you see a clearing and can hear the sound of gentle, running water. Back to the East is the parking lot, and a trail leading northeast connects you to the middle path." 

The Camp Grounds is a room.  The Camp Grounds is northwest of the Left Path. The empty campsite is a container in the camp grounds. The knife is a thing in the empty campsite. 

The River is a room. The River is west of the Left Path. The Shiny Key is a thing in the river. The shiny key unlocks the silver chest. "You walk up to shallow, calm river running through the forest. The water bubbles in and out of small streams weaving through the trees along the river's shores. You notice in a small patch of land in the middle of the shallows, something is glinting sunlight under the edge of a rock. You wouldn't have noticed it if it weren't for the bright afternoon sunlight being just at the right angle. Out of curiosity, you decide to wade through the water to take a closer look and upon closer inspection, it appears to be a particularly shiny key, constantly washed by the rising and falling of the river. It appears to be tied tightly to to a hole in the rock, but you think you can break the string." 



[This section details the middle path] 
The Middle Path is a room. The middle path is north of the parking lot. The middle path is northwest of the Right Path. "You walk into the northern most trail and are greeted with a beautiful, long wooden pedestrian bridge crossing over a branching river. Right beyond the end of the bridge, you can see a rocky clearing, and what appears to be a waterfall. As a final choice, there's a trail leading southwest to the left path, and a trail leading southeast to the right path. You take a moment to stand in the middle of the bridge and just look out into the beautiful foresty river around you as the leaves dance around you, falling from the trees. This is why you came out here today. Simply beautiful. "

The Rock Clearing is a room. The Old Hiker is a man. The Old Hiker is in the Rock Clearing. The Picinic Table is a thing. The Rock Clearing is north of the Middle Path. The description of the rock clearing is "You enter a large, rocky clearing sitting near a waterfall and overlooking the pools down below. In this area, you see a single picinic table covered in leaves, and behind that table, you can see an old hiker on his knees on the ground, seemingly looking for something... Perhaps I should ask the Old Hiker about if he is okay..." 

The phone number is a thing. The Old Hiker is carrying the phone number. 

Understand "are you okay" or "why he is on the ground" or "if he is okay" as "[entry]"; 

After asking the Old Hiker about "[entry]": 
	now the player is carrying the phone number; 	
	say "You walk up to Old Hiker and politely ask him if he's okay - you know, and old man being on the ground and all, a touch concerning - he looks up you, slightly embarrased and says 'Hello! Yes, I'm doing alright. It's just that I'm looking for something that I hid around here a long time ago and I can't seem to remember where I put the key. I left it hidden and tied to a small hole in a big rock so it wouldn't go anywhere you see. It goes to a very import box of memories I hid here with my late wife, and I'd like to retrieve it like we always said we would back in our younger days...' You are moved by his story and offer to help the kind gentleman out. 'Aw, that's so kind of you! I would really appretiate it, the old legs of mine aren't that great for hiking anymore. Call me Mr.Brown. To make this easier on both of us, why don't you just give me a call if you manage to find it! Thankfully I have a few old business cards in my wallet so you can call the number there. I don't know if you'll be able to find it or if it's even here anymore, but hey at least it's a bit of good fun, yes? Thank you again, so much! "



[This section details the right path] 
The Right Path is a room. The right path is east of the parking lot. "You walk into the eastern most path and are delighted to see that this path is lined with beautiful, baby birch trees. You can hear the sounds of many birds flying in the trees above you. Off to the northeast, through the gaps between the trees, you can see what appears to be a trail leading towards a wide, open field. Then, branching off to the southwest, you see a sign with nothing on it but a picture of a tree. This must be the path towards that famously large tree! And of course, back to the west is the parking lot that you came from, as well as a path connecting to the middle trail to the northwest." 

The Open Field is northeast of the Right Path. "You enter an open field"  

The Tree is southeast of the Right Path. The description of the tree is "As you continue along the trail, you finally reach the locally-famous giant tree! It's an unusually large birch tree growing admist its much smaller brethern. You walk around the tree and stand back to really appreciate its glory and its gorgeous, golden leaves from just the right angle when you notice what looks like a small silver chest glinting in the sunlight. It seems to be popping out from the side of its trunk a few branches up, as if the tree had grown around it and taken it up as it grew."

The Tree Branches is a room. The Tree Branches is above the Tree.  "You find a way to climb the branches up to the small silver box. It looks pretty lodged into the tree trunk." 

The Silver Chest is a locked container in the tree branches. "[if the player is not carrying the knife] it looks like you can get it out if you had something sharp... [else] You think to yourself that you could use your knife to get the chest out of the tree trunk [end if]".

After taking the silver chest:
	say "[if the player is not carrying the key] You use the knife to carefully pry the chest from the tree, but it looks like you'll need a key to open it. [else] You successfully use the knife to carefully pry the chest from the trunk of the tree. The silver chest has a lock on it that appears to match your shiny key!" 
	
After opening the silver chest: 
	say "You open the chest to see that it contains an expensive looking ruby necklace and a large assortment of old photos that look like they were taken many years ago. These photos seem to be of a young couple, and appear to be very precious. [if the player is carrying the phone number] 'This must be what The Older Hiker was looking for! I should give him a call and bring it to him!' you exclaim - You head off to go find the Old Hiker and return his old box of memories to him. You have found the complete ending! [else] You wonder who this belongs to, but considering that it was grown into a tree, you assume that whoever it was that put it there, they must be long gone. You decide to keep the silver chest and everything in it, while thinking about whether or not you could sell some of it for profit. - You have found the normal ending![end if]";
	end the story. 

 

