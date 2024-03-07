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
My name is Susan :)

I like popsicles and rainbows.

I lied.

LOOOOOOOL.
You have {gnome_count} gnomes!!

~gnome_count+=1
Have a gnome!

Now you have {gnome_count} gnomes :)

->DONE


===Clyde===
My name is Clyde :)

I like popsicles and rainbows.

Yayyyyyyyy.

GNOME.

You have {gnome_count} gnomes!!!
->DONE