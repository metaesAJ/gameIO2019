///@arg up
///@arg right
///@arg down
///@arg left

///movement all players
var up = argument0;
var right = argument1;
var down = argument2;
var left = argument3;

keyTop = keyboard_check(up);
keyRight = keyboard_check(right);
keyBot = keyboard_check(down);
keyLeft = keyboard_check(left);

hMove = keyRight - keyLeft;
vMove = keyBot - keyTop;

hsp = hMove * moveSpeed;
vsp = vMove * moveSpeed;

/// collision
if (place_meeting(x + hsp, y, oWall))
{
	hsp = 0;
	}
	
if (place_meeting(x, y + vsp, oWall))
{
	vsp = 0;
	}


x += hsp;
y += vsp;