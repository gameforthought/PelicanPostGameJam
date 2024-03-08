VAR character = "Susan"
VAR gnome_count = 0

->start


===start===

{ character:
- "Susan":  ->Susan
- "Clyde":  ->Clyde
}


-> DONE

===Susan===

My name is Susan :) #Susan #neutral


I like popsicles and rainbows.  #Susan #happy

I lied. #Susan #angry #closed

LOOOOOOOL. #Susan #blush

You have {gnome_count} gnomes!!#Susan #happy

~gnome_count+=1

Have a gnome!#Susan #blush #open

Now you have {gnome_count} gnomes :) #Susan #happy

->DONE


===Clyde===
My name is Clyde :)

I like popsicles and rainbows.

Yayyyyyyyy.

GNOME.

You have {gnome_count} gnomes!!!
->DONE