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
VAR gnome_count = 0
INCLUDE char_test.ink



->start
=== start ===

->beaTest



=== bea1 ===
Oh dear, being nocturnal is not fun with a day job... #Beatrice #sleepy #open

O-Oh my!  A new face!  We haven't had one of those in a while! #Beatrice #surprised

Apologies, dear. #Beatrice #blush

I'm Beatrice, the town librarian.  It's nice to meet you! #Beatrice #happy

Who might you be? #Beatrice #neutral

I'm Pepper, the new mailman.  It's nice to meet you too! #Pepper #neutral

Ooooh, a mailman!  How nice!  We haven't had one of those in a while! #Beatrice #neutral

You... you what? #Pepper #surprised

We used to have Bill, but he retired a while back. #Beatrice #neutral

We've been having to go to the post office to pick up mail ourselves for months! #Beatrice #neutral

A good way to get your steps in, that's for sure!  #Beatrice #neutral

But this old bat's had enough, let me tell ya! #Beatrice #laugh

Anyways, sorry for rambling at you.  Can I help you? #Beatrice #neutral

Yes, actually I have a package for you. #Pepper #neutral

Oh, silly me, of course that's why you're here!  Thank you, dear! [remove_item,Bea1] #Beatrice #laugh

Of course! #Pepper #neutral

If you ever need help finding your way around, I'm your gal! #Beatrice #happy

Will do!  Thanks! #Pepper #neutral

But while you're still here, could I ask you a favor, dear? #Beatrice #neutral

Sure, what can I help you with? #Pepper #neutral

You see... I have a friend on the edge of town.  Her name is Suzannah. #Beatrice #neutral

She's what most would call a hermit. #Beatrice #sad

She wasn't always that way... but now she barely comes to town, if ever. #Beatrice #sad

I haven't gotten to check on her in a while.  Could you take this letter to her? [give_item,Suz1,letter,Suzannah,Beatrice,A letter addressed in a curly script][door_set_knot,obj_suzannah_door,suz1] #Beatrice #neutral

Oh, of course! #Pepper #neutral

Wonderful!  Thank you so much! #Beatrice #happy

If you go to the right past this library, all the way past Shoreside Station on the far edge of town you'll come to a beach.  #Beatrice #neutral

That's where her house is! #Beatrice #neutral

I think I can remember that. #Pepper #neutral

Good luck! #Beatrice #happy #closed

->DONE


=== suz1 ===

I already told you Bea; I don’t want anything to do with your party! #Suzannah #angry #closed

Are you Suzannah? #Pepper #neutral

Oh... you're not... never mind, I'm sorry. #Suzannah #blush

... #Suzannah #neutral

Can't say I recognize that voice.  Who are you? #Suzannah #neutral

I'm Pepper, the new mailman.  I have a delivery for you.  It's a letter. #Pepper #neutral

...a letter? #Suzannah #neutral #open

... #Suzannah #neutral

That bothersome old bat... #Suzannah #angry

She asked me to bring this to you.  She's worried about you. #Pepper #sad

So she put you up to this?  Then tell her I don't need her concern. #Suzannah #neutral

... #Suzannah #neutral

Thank you for bringing me this. Now off you go, back to Bea. And try not to trip on the rocks.[door_set_knot,obj_beatrice_door,bea2] #Suzannah #neutral

Of course, take care! #Pepper #neutral

...yeah.  #Suzannah #neutral #closed

-> DONE

=== bea2 ===

Oh, you're back!  And I'm simply brimming with energy this time!  Woo hoo, evenings! #Beatrice #happy #open

That makes one of us... #Pepper #sleepy

Oh, dear!  You look exhausted! #Beatrice #neutral

I'm okay, I appreciate your concern though.  #Pepper #neutral

Did you manage to get the note to Suzannah? #Beatrice #neutral

Yeah, she was't too pleased to read who the note was from.  #Pepper #neutral

Oh, Suz!  You never change, huh? #Beatrice #laugh

So what's this party she mentioned? #Pepper #neutral

Hmm?  Oh, yeah!  You ready for a history lesson, dear? #Beatrice #neutral

I- #Pepper #neutral

Wonderful!  #Beatrice #happy

For many years, Port Pleasant had a Community Festival. #Beatrice #neutral

We've always been a tight knit community.  But hoo boy, did this festival show it! #Beatrice #happy

People and local businesses would bring all kinds of goodies, there'd be games and music and all kinds of festivities! #Beatrice #happy

Ohhh, how I miss it... #Beatrice #sad

So, what happened to it? #Pepper #neutral

Times changed, slowly the residents of Port Pleasant became less active and involved with each other. #Beatrice #neutral


->DONE