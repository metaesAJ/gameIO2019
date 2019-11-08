var up = ord("I"), down = ord("K"), right = ord("L"), left = ord("J")
player_movement(up, right, down, left);

///change sprites horisontal
if hMove = 1
{
	sprite_index = sPlayer2;
	direction = 0;
}
else if hMove = -1
{
	sprite_index = sPlayer2;
	direction = 180;
}
///change sprites vertical
if vMove = 1
{
	sprite_index = sPlayer2;
	direction = 270;
}
else if vMove = -1
{
	sprite_index = sPlayer2;
	direction = 90;
}

if (hMove = 0 && vMove = 0)
{
	sprite_index = sPlayerStand2;
	image_speed = 0;
	image_index = direction/90;
}
else image_speed = 1;