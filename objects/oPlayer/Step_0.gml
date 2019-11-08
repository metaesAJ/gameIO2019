var up = ord("W"), down = ord("S"), right = ord("D"), left = ord("A")
player_movement(up, right, down, left);

///change sprites horisontal
if hMove = 1
{
	sprite_index = sPlayer;
	direction = 0;
}
else if hMove = -1
{
	sprite_index = sPlayer;
	direction = 180;
}
///change sprites vertical
if vMove = 1
{
	sprite_index = sPlayer;
	direction = 270;
}
else if vMove = -1
{
	sprite_index = sPlayer;
	direction = 90;
}

if (hMove = 0 && vMove = 0)
{
	sprite_index = sPlayerStand;
	image_speed = 0;
	image_index = direction/90;
}
else image_speed = 1;