INCLUDE debug_test.ink
//TAGS: #speaker #emotion #door_status

/*
neutral
happy
sad
cry
anger
fear
surprise
sleepy
blush
sigh
laugh
confused
*/

/* SCRIBBLE FUNCTIONS AND FORMATTING

[/] resets formatting to default, but more specific end tags for each effect are also listed

Animations and Effects:
[wave][/wave]
[wheel][/wheel]
[shake][/shake]
[slant][/slant]

Colors:
[{color var name}][/c]
c_pepper
c_beatrice
c_suzannah

Functions:
[delay {number of milliseconds}]

DO NOT INCLUDE SPACES OR QUOTES IN THE FOLLOWING FUNCTIONS UNLESS YOU WANT THEM TO SHOW UP

Creates an item and puts it in the player's inventory
[give_item,{associated knot},{letter or package},{to},{from},{description}]

Removes an item from the player's inventory
[remove_item,{associated knot}]

Loads a coversation into the specified door
[door_set_knot,{door name},{knot name}]

List of doors:
obj_beatrice_door
obj_suzannah_door

*/

VAR character = "bea1"

->start
=== start ===

->pie1


=== bea1 ===
Oh dear, being nocturnal is [slant]not[/] fun with a day job... #Beatrice #sleepy #open

[wave]O-Oh my[/]!  A new face!  What a nice surprise! #Beatrice #surprised

Apologies, dear. #Beatrice #blush

I'm [c_beatrice]Beatrice[/], the town librarian.  It's nice to meet you! #Beatrice #happy

Who might you be? #Beatrice #neutral

I'm [c_pepper]Pepper[/c], the new mailman.  It's nice to meet you too! #Pepper #neutral

Ooooh, a mailman!  How nice!  We haven't had one of those in a while! #Beatrice #neutral

You... you what? #Pepper #neutral

We used to have Bill, but he retired a while back. #Beatrice #neutral

We've been having to go to the post office to pick up mail ourselves for months! #Beatrice #neutral

A good way to get your steps in, that's for sure!  #Beatrice #neutral

But this old bat's had enough, let me tell ya! #Beatrice #laugh

Anyways, sorry for rambling at you.  Can I help you? #Beatrice #neutral

Yes, actually I have a package for you. #Pepper #neutral

Oh, silly me, of course that's why you're here!  Thank you, dear![remove_item,Bea1] #Beatrice #laugh

Of course! #Pepper #happy

If you ever need help finding your way around, I'm your gal! #Beatrice #happy

Will do!  Thanks! #Pepper #neutral

But while you're still here, could I ask you a favor, dear? #Beatrice #neutral

Sure, what can I help you with? #Pepper #neutral

You see... I have a friend on the edge of town.  Her name is [c_suzannah]Suzannah[/]. #Beatrice #neutral

She's what most would call a hermit. #Beatrice #sad

She wasn't always that way... but now she barely comes to town, if ever. #Beatrice #sad

I haven't gotten to check on her in a while.  Could you take this letter to her? [give_item,Suz1,letter,Suzannah,Beatrice,A letter addressed in a curly script][door_set_knot,obj_suzannah_door,suz1] #Beatrice #neutral

Oh, of course! #Pepper #neutral

Wonderful!  Thank you so much! #Beatrice #happy

If you go to the right past this library, all the way past Shoreside Station on the far edge of town you'll come to a beach.  #Beatrice #neutral

That's where her house is! #Beatrice #neutral

I think I can remember that. #Pepper #neutral

Good luck! #Beatrice #happy

->DONE


=== suz1 ===

I already [shake]told[/] you [c_beatrice]Bea[/]; I don't want anything to do with your party! #Suzannah #angry #closed

Are you [c_suzannah]Suzannah[/]? #Pepper #neutral

Oh... you're not... never mind, I'm sorry. #Suzannah #blush

... #Suzannah #neutral

Can't say I recognize that voice.  Who are you? #Suzannah #neutral

I'm [c_pepper]Pepper[/], the new mailman.  I have a delivery for you.  It's a letter. #Pepper #neutral

...a letter?[remove_item,Suz1] #Suzannah #neutral #open

... #Suzannah #neutral

That [c_beatrice]bothersome old bat[/]... #Suzannah #angry

She asked me to bring this to you.  She's worried about you. #Pepper #sad

So she put you up to this?  Then tell her I don't need her concern. #Suzannah #neutral

... #Suzannah #neutral

Thank you for bringing me this. Now off you go, back to [c_beatrice]Bea[/]. And try not to trip on the rocks. [door_set_knot,obj_beatrice_door,bea2] #Suzannah #neutral

Of course, take care! #Pepper #neutral

...yeah.  #Suzannah #neutral

-> DONE

=== bea2 ===

Oh, you're back!  And I'm simply [wheel]brimming[/] with energy this time!  [wave]Woo hoo[/], evenings! #Beatrice #happy #open

That makes one of us... #Pepper #sleepy

[wave]Oh, dear[/]!  You look exhausted! #Beatrice #surprise

I'm okay, I appreciate your concern though.  #Pepper #laugh

Did you manage to get the note to [c_suzannah]Suzannah[/]? #Beatrice #neutral

Yeah, but she wasn't too pleased to read who the note was from.  #Pepper #sad

[wave]Oh, [c_suzannah]Suz[/]!  You never change, huh? #Beatrice #laugh

So what's this party she mentioned? #Pepper #neutral

Well, dear, every year I like to throw a little party for everyone in town. #Beatrice #neutral

Or I used to, anyway, back when people would show up #Beatrice #sad 

Everyone brought all kinds of goodies, there'd be games, music, and all manner of festivities! #Beatrice #happy

But things changed... #Beatrice #neutral

People changed... #Beatrice #sad 

Now I can't seem to get anyone to bother coming. #Beatrice #sad

As a mailman, I'll get around town a lot. #Pepper #neutral

Maybe I could help you with that? #Pepper #neutral

Oh, [c_pepper]Pepper[/c], dear, that'd be so wonderful!  #Beatrice #happy

I'd be happy to!  It's getting late for me though, good night!  #Pepper #neutral

Good night [c_pepper]Pepper[/c], thank you so much for your help today!  #Beatrice #happy

->DONE

===cly1===

Hi, delivery fo- #Pepper #neutral

[shake]They're gone.[/] #Clyde #fear

I'm sorry? #Pepper #neutral

The gnomes!  They've escaped, and now Port Pleasant will feel their wrath! #Clyde #fear

The... gnomes?  #Pepper #neutral

Wait, do you seriously not know about the gnomes? #Clyde #neutral

I can't say I do.  #Pepper #neutral

Well then my dear, today's your lucky day!  Allow me to enlighten you. #Clyde #neutral

I do have to get back to my deliv- #Pepper #neutral

Don't be silly!  Now, as I was saying... #Clyde #laugh

Oh boy... #Pepper #sigh

The gnomes are creatures who came to us long ago.  When?  Nobody knows! #Clyde #neutral

They're alive, I know it, but nobody believes me! #Clyde #neutral

I can't say I do either... #Pepper #neutral

They're known to be pranksters. They'll disappear in the blink of an eye... #Clyde #neutral

...then next thing you know, they're off pranking the poor townspeople! #Clyde #neutral

What kind of pranks? #Pepper #neutral

Well, it starts with generally messing with people and things in inconsequential ways. #Clyde #neutral

But if left unchecked for too long, they'll start getting more and more ambitious. #Clyde #neutral

This could lead to them trying to take over the world! #Clyde #neutral

What on earth... #Pepper #sigh

Say... you're a mailman, right?  #Clyde #neutral

...Yeah? #Pepper #neutral

So you travel around town every day, right? #Clyde #neutral

Yes, typically. #Pepper #neutral

Congratulations, you're my new partner! #Clyde #happy

Wh- you can't just- #Pepper #surprise

Sure I can!  You're gonna help me find the gnomes!  #Clyde #neutral

Anyways, the name's [c_clyde]Clyde[/].  It's a pleasure, partner! #Clyde #happy

...[c_pepper]Pepper[/].  Nice to meet you. #Pepper #sigh

Oh, this is too perfect!  #Clyde #happy

I'm sure the first is out there as we speak, waiting for you to track it down! #Clyde #neutral

So... how do I know where to find these gnomes? #Pepper #neutral

Keep your eyes out for something in town that looks... off.  #Clyde #neutral

Like something's been tampered with in a strange way. #Clyde #neutral

There, if you look hard enough, you'll find a gnome. #Clyde #neutral

So, once I find them, what should I do? #Pepper #neutral

As long as you can see them they won't move, so you can just grab it. #Clyde #neutral

Then, bring it back here! #Clyde #neutral

I see.  Well, I'll keep my eye out for your... gnomes. #Pepper #neutral

Wonderful, thanks a million!  Take care now! #Clyde #happy

->DONE

===cly2===

Ah, well if it isn't my dear partner!  How goes- #Clyde #neutral

Oh, look what you have here!  You've done it!  Thanks, partner! #Clyde #happy

... #Pepper #fear

You seem perplexed.  Care to tell me wha- #Clyde #neutral

[shake]It blinked at me...[/] #Pepper #fear

Ahhh, so now you see! #Clyde #laugh

No, no, no, lawn ornaments are not supposed to BLINK at me! #Pepper #neutral

What are these things?? #Pepper #neutral

I've already explained to you what they are!  Oh, but you didn't believe me! #Clyde #laugh

[c_clyde]Clyde[/], I've been here for only a few days, why would I believe you?? #Pepper #neutral

Well, that doesn't matter now!  #Clyde #neutral

So you'll keep being my partner, right?  #Clyde #neutral

At this point, I guess I'm committed... #Pepper #sigh

Anyways, here's your gnome.  #Pepper #neutral

Thank you [c_pepper]Pepper![/]  Come here, Bartholomew. #Clyde #happy

Take care, now! #Clyde #happy #closed

What a strange fellow... #Pepper #sigh

Can't believe I'm dealing with sentient gnomes my first day on the job! #Pepper #laugh

->DONE


===pie1===

Ah, you must be the new mailman!  [c_pepper]Pepper[/], was it? #Pierre #neutral

Yup, nice to meet you! #Pepper #happy

I'm [c_pierre]Pierre[/].  Welcome to Port Pleasant!  How was the move? #Pierre #neutral

It went well!  I'm excited to get to see more of the town. #Pepper #happy

Glad to hear!  You'll be getting to do plenty of that soon enough.  #Pierre #happy

Anyways, let me give you the run down on what you'll be doing here. #Pierre #neutral

Each morning, you'll come in here and get your packages for the day. #Pierre #neutral

Seems like a light day today, so you shouldn't have too much trouble. #Pierre #neutral

Oh, this is for [c_beatrice]Beatrice![/]  You'll find her at the library.  #Pierre #happy

She's a sweetheart, if not a little... batty.  Heh. #Pierre #neutral

Now, for the delivery process.  When you arrive at a house, you'll knock on the door. #Pierre #neutral

[wave]"Remember, be patient, and greet each customer with a smile!"[/] #Pierre #neutral

...or something like that, anyways. #Pierre #sigh

Once they answer the door, you'll hand the package to them.  #Pierre #neutral

Sometimes, townspeople will have things they'll want you to deliver to other people. #Pierre #neutral

You can feel free to take care of that while you're on the job. #Pierre #neutral

Anyways, I think that about covers it.  Simple enough? #Pierre #neutral

Mhm! #Pepper #neutral

You'll do just fine then!  #Pierre #neutral

Sounds good, thank you! #Pepper #happy

No problem.  Off you go now, good luck today! #Pierre #happy

Actually, [c_pepper]Pepper[/], one last thing before you go #Pierre #neutral

Hmm?  #Pepper #neutral

Stop back here after you finish your deliveries tonight.  I want to hear about how it goes!  #Pierre #neutral

Oh, sure thing!  See you then!  #Pepper #happy

->DONE

===pie2===

Welcome back!  #Pierre #happy

Hey, [c_pierre]Pierre[/].  #Pepper #neutral

So, how was your first day?  #Pierre #neutral

It was good!  [c_beatrice]Beatrice[/] was super sweet. #Pepper #happy

She had me take a letter to the beach for [c_suzannah]Suzannah[/] so I got to see whole town. #Pepper #neutral

Ah, is that so?  Haven't heard that name in a minute.  #Pierre #surprise

Do you know why she's shut herself away like that, [c_pierre]Pierre[/]?  #Pepper #confused

Yes, but unfortunately that's not my information to disclose.  I'm sure you'll find out eventually.  #Pierre #neutral

As stoic and abraisive as she can be sometimes, [c_suzannah]Suzannah[/]'s got a soft heart. #Pierre #neutral  

Might just take you some time and effort to get through to her, y'know?  #Pierre #neutral

Makes sense.  #Pepper #neutral

Anyways, after that, I stopped back at the library to let [c_beatrice]Beatrice[/] know that I had delivered the letter. #Pepper #neutral

We talked a bit about this party she used to throw for the townspeople.  #Pepper #neutral

I remember going to that once or twice.  It's a shame it fell through. #Pierre #sigh

Well, I offered to help her put it back together. #Pepper #neutral

After seeing how sad she was that the community drifted apart, I guess it just felt right to offer to help.  #Pepper #neutral

I'm just not sure I'll be able to.  I barely know anyone!  #Pepper #neutral

I guess I got ahead of myself.  #Pepper #sad 

Oh, [c_pepper]Pepper[/]! Chin up. #Pierre #laugh

I've known you for all of one day, if that.  And I can already tell you have a good head on your shoulders.  #Pierre #neutral

And, being a mailman, you tend to make your way around town.  #Pierre #neutral

That way, you'll find yourself in the know with everything soon enough.  #Pierre #neutral

I think that's a pretty good pathway to being able to help bring people back together. #Pierre #neutral

Besides, "Small acts of kindness" is pretty much in the job description.  #Pierre #neutral

Thanks, [c_pierre]Pierre[/].  I'll keep doing my best.  #Pepper #happy

Of course.  Just take it one step at a time.  Good work today!  #Pierre #neutral

I'll see you tomorrow, then?  #Pierre #neutral

Yup!  See you tomorrow! Take care! #Pepper #happy

Thanks, [c_pepper]Pepper.[/]  You too.  #Pierre #happy

->DONE