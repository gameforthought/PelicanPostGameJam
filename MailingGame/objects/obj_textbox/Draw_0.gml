/// @description Insert description here
// You can write your code in this editor


//draw the textbox
draw_sprite(spr_textbox_test,0,x,y);

//draw the text
draw_set_font(fnt_test); //set the font


// basic bitch line
//draw_text(x,y,text);

draw_text_ext(x,y,text, line_height, box_width);