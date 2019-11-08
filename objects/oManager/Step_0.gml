/// @description Insert description here
// You can write your code in this editor
var count = instance_number(oEnemy);

if (alarm[0] <= 0 && count < 10)
{
	var xx = irandom_range(0, room_width);
	var yy = irandom_range(0, room_height);
	var enemy = instance_create_layer(xx, yy, "Enemy", oEnemy);
	with (enemy)
	{
		while (place_meeting(x, y, oEnemy) or place_meeting(x, y, oWall) or place_meeting(x, y, oPlayer) or place_meeting(x, y, oPlayer2))
		{
			x = irandom_range(0, room_width);
			y = irandom_range(0, room_height);
		}
	}
	alarm[0] = 10 * room_speed;
}