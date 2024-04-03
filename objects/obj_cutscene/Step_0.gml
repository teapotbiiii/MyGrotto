camera_set_view_pos (view_camera[0], 1250, ypos);
ypos = max(ypos+4,0);

if (!fadeout) a = max (a-0.005, 0.25); else a = min (a + 0.005, 1);

if (ypos >= 2600) fadeout = 1;

if (a ==1) && (fadeout == 1) room_goto(rm_1);









