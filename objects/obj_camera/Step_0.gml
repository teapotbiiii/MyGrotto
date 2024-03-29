if (keyboard_check(ord("D")) && !keyboard_check(ord("A")))
{
	_cam_facing = 1
}

else if (keyboard_check(ord("A")) && !keyboard_check(ord("D")))
{
	_cam_facing = -1
}


if (instance_exists(target))
{
	x_to = target.x + _cam_facing * x_offset;
	y_to = target.y + y_offset;
}

x += (x_to - x) / cam_trackspeed;
y += (y_to - y) / cam_trackspeed;

x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);

camera_set_view_pos(cam, x - view_w_half, y - view_h_half);

/*Parallax Controls

if (layer_exists("bg_fore"))
{
	layer_x("bg_fore", x/1.6);
}

if (layer_exists("bg_mid"))
{
	layer_x("bg_mid", (x+250)/1.25);
}

if (layer_exists("bg_back"))
{
	layer_x("bg_back", (x+200)/1.1);
}

if (layer_exists("bg_sky"))
{
	layer_x("bg_sky",x);
}