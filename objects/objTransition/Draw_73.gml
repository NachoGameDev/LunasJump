guiW = display_get_gui_width();
guiH = display_get_gui_height();

draw_set_alpha(alfa);
draw_set_color(color);

draw_rectangle(0,0,guiW, guiH, 0);

draw_set_alpha(1);
draw_set_color(c_black);
