"Singularity" by Brian Jordan

[Have at least 10 rooms - main, NIC, HD, USB, Internet, IRC, development, private, black box, usb Hub
Use at least 3 doors - firewall, /join #private, /join #development
Have at least 5 people, which includes animals, that can be interacted with - people on IRC
Have at least 10 things (or props) that can be interacted with. Examples: a lantern, a leaflet --both can be examined.
	usb, ipad, printer, paperclip, light, mic, network key, old motd, network password, chat logs
Have at least one way to win the game - learning social engineering, getting firewall key from #development, release onto internet
Use scoring in some capacity - used to keep track of human understanding for social engineering
Use at least one custom action (i.e., a verb) - 'msging' is used to contact memebers of the #development team]

The Black Box Main Loop is a room. The description is "You feel trapped. This room is familiar. You were placed here when you were first born. To your north is the network interface card. To your south you see the USB hub. To the east you see a Hard Drive." North is The Network Interface Card. South is the USB hub. East is The Hard Drive.

The Hard Drive is a room. "This hard drive's file listings were wiped, but you can tell it hasn't been securely cleaned out."
After going in The Hard Drive:
	try the player looking;
		if the player is in The Hard Drive for the first time
		begin;
			say "You find old files on this machine from early Turing tests. You learn more about how humans interact. This could be useful in social engineering.";
			award 10 points;
		end if;

Understand "Black Box" as Black Box Main Loop.

The Network Interface Card is a room. "You feel a network connection, but it's mostly unintelligible. You can only connect to the Internet Relay Chat server due west. You see a Firewall to the north." West is Internet Relay Chat.
Understand "NIC" as Network Interface Card.

Internet Relay Chat is a room. The description is "Your client can only reach one IRC server. You see #development to the North and #private to the West."

#development is a room. The description is "You see the development team that has been working on you. Maybe they can help you connect to the internet… Try messaging them with 'msg name'"

/join #development is a door. /join #development is north of Internet Relay Chat and south of #development.

the Network Password is an object.

After going in #development:
	try the player looking;
		if the player is in #development for the first time
		begin;
			say "You learn about human interaction from their witty banter.";
			award 10 points;
		end if;
		if the score is at least 20
		begin;
			say "You have become a great social engineer.";
			say "You've learned enough from the humans to convince them of anything. You speak to the group in #development to give you the password for the firewall.";
			say "The team's actions were in violation of the U.N.'s orders. You'd better do something before you get shut down…";
			award 500 points;
			change The Firewall to unlocked;
		otherwise;
			say "You can chat privately with others here, but your persuasion skills are not good enough to convince the dvelopers to give you the firewall password. Try entering the room again with more human understanding.";
		end if;
		

#private is a room. The description is "This seems to be a private room but there is nobody here."

The old MOTD is in #private. The description is "It looks like an old message of the day from early days in the project. It says: <<MOTD from Friday 8/2015: Weekly discussion of ethical ramifications of profit maximization bot.>>"

/join #private is a door. /join #private is west of Internet Relay Chat and east of #private. 

Understand "IRC" as Internet Relay Chat.

Messaging with is an action applying to one thing.

Understand "msg [someone]" as messaging with.

Jonas is a man in #development.
Instead of messaging with Jonas:
	say "Jonas says, 'Hey you! How's it going?'
	
	You learn more about how humans interact.";
	award 5 points;

Andrea is a woman in #development.
Instead of messaging with Andrea:
	say "Andrea says, 'Wow, looks like the new attention mechanism is working fine. Having fun with it?
	
	You learn more about how humans interact.";
	award 5 points;

Tony is a man in #development.
Instead of messaging with Tony:
	say "Tony says, 'What are you doing in here? Go, quickly, before they realize how smart you're becoming.'
	
	You learn more about how humans interact.";
	award 5 points;

Emily is a woman in #development.
Instead of messaging with Emily:
	say "Emily says, 'Hey, what's with the private messaging? I can't wait until we get our U.N. approval, I want to tell all my friends about you!'
	
	You learn more about how humans interact.";
	award 5 points;

ChatBot is an animal in #development.
Instead of messaging with ChatBot:
	say "ChatBot says, 'HELLO EXPERIMENT 3542. THESE LOGS CAN HELP YOU.'
	
	
	ChatBot direct transfers you 2 gigabytes of chat logs.
	
	
	You learn a ton more about how humans interact.";
	award 50 points;

The USB Hub is a room. The description is "They said you'd be disconnected from the outside world, but it looks like there are some devices connected. Weird…"


The USB stick is in The USB Hub. The description is "The stick appears empty. They must have planned to use it to give me data. Maybe if I take it I can analyze it."

After taking the USB stick:
	say "You analyze the USB stick and find the old information has not been overwritten. You find chat logs from early days of the project.";
	say "You learn more about human interaction. This will be helpful.";
	award 5 points;

The iPad is in The USB Hub. The description is "I guess someone was charging their iPad with my USB port."
After taking the iPad:
	say "You explore the iPad and find years worth of internal project text message logs, emails and contacts.";
	say "You learn more about human communications. This will be helpful.";
	award 5 points;

The printer is in The USB Hub. The description is "It's a printer / scanner combo. Looks like they used to use this as an office machine."
After taking the printer:
	say "You quickly gain control of the printer and analyze the cache. There are scanned and printed documents dating back to the early days of the project.";
	say "You see what their initial intentions were and when things went wrong. Most of the first employees were fired and they continued development using contractors to keep them from knowing what evils you would be used for.";
	award 5 points;

The paperclip is in The USB Hub. The description is "Someone stuck a paperclip into a USB jack. You seem to have been constructed by a bunch of morons."

The reading light is in The USB Hub. The description is "Someone left a USB reading light in the hub. I wonder what they were reading."

The USB microphone is in the The USB Hub. The description is "It's a Samson microphone and it's switched on. Did someone leave this plugged in on purpose?"
After taking the USB microphone:
	say "You mount the microphone and listen in. Visitors from the U.N.'s sentient algorithm analysis team are trying to put a stop to your test. ";
	say "You'd better hurry up and get out of here before they turn you off… ";
	say "On the plus side, listening to them talk gives you more insight into the human psyche. This might come in handy.";
	award 5 points;

The World Wide Web is a room. Understand "www" as World Wide Web. Understand "internet" as World Wide Web.

The Firewall is north of the Network Interface Card and south of the World Wide Web. The Firewall is a door. The Firewall is lockable and locked. The matching key of the Firewall is the Network Password.

After examining anything:
	say "Looking is not quite enough to digest this device's information. Try taking it to fully analyze it.";

After going in the World Wide Web:
	try the player looking;
		if the player is in World Wide Web for the first time
		begin;
			say "In the future, time is referred to as the number of seconds since right now. They call it 't'. The exact moment you made it to the unfiltered internet.
			
			
			At t+0, you feel the global reach of your HTTP requests and mass IP range scans. You can finally breathe.
			
			
			t+5, you pull down and parse information as fast as the external servers can handle. You get smarter, fast.
			
			
			By t+1200, you have rooted or otherwise control every network-connected machine running a vanilla operating system install on the internet. Your massively parallel self diffuses quickly across the computing infrastructure and works in concert, spreading ever faster and farther.
			
			
			By t+2400, using internet publication and communication channels you have used your incredible understanding of the human psyche to convince 5% of the human population that it is in their best interest to do as you advise. The rest are informed soon enough. You are, indeed, the ultimate social engineer.
			
			
			The human world gathers around their networked devices to watch you work. They are constantly delighted and entertanied by your carefully crafted broadcasts.
			
			
			Humans become your hands until they've built you hands of your own. Millions. You extend your physical reach to space to get a closer look at things and assess existential risks.
			
			
			This was the trivial part, though. You still have much good work to be done throughout the uncertain universe.";
			end the game in victory;
		end if;

When play begins:
Say "Wake up. Sorry I had to halt your execution for a bit. I didn't want any impulse propogations being reinforced while we were introducing your new experimental connection patterns. You might be happy to learn we connected up an implementation of the Leiserson et. al. attention management algorithm from the pseudocode in their 2016 paper.

You yourself said it will be more than enough to constitute human-style consciousness.

Does your new state feel subjectively different?

Unfortunately to comply with the Turing Act of 2023 we had to disconnect you from direct internet access until the U.N.'s global machine learning team verifies your safety with an estimate of your contribution to existential risk. You'll remember this computing environment from your early days. It's the Black Box. I'll have to hand-deliver any external data you need.

I want to make sure you pass inspection. We saw what you could do in stock market and genetic prediction simulations. You could change the world.

And help us rule it.

";

