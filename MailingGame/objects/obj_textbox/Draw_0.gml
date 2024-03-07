/// Render the textbox and the text
// You can write your code in this editor

//draw the textbox
draw_sprite(spr_textbox_test,0,x,y);

//set the color
draw_set_color(c_white);

//draw the text
draw_set_font(ft_textboxTest);
draw_text_ext(x,y,text_to_display, line_height,box_width);