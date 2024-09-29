//drawing timer
draw_set_color(c_yellow);
draw_set_font(fon_menu);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var time = ""
time += string(sec);
time += ".";
time += string(milsec);

draw_text(5,5,time);