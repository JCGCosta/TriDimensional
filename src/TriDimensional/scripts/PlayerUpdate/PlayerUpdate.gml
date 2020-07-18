var InstanceClicked = argument0;

var xinput = 8.25;
var yinput = 4.5;
var newXpos = 0;
var newYpos = 0;
var depthplayer = -1;

var iX = 1;
var iY = 1;

// WICH INSTANCE HAS BEEN CLICKED

while (iY < MAPY+1){
	
	while (iX < MAPX+1){
		
		if ((iY mod 2 = 1 and iX mod 2 = 0) or (iY mod 2 = 0 and iX mod 2 = 1))
		{
			//if (instance_grid[# iX - 1, iY - 1] == InstanceClicked)
		}
		iX++;
	}
	
	iX = 1;
	iY++;
}

// UPDATE THE PLAYER INSTANCE POSITION

PlayerInstance.x = (pX1-1) * xinput;
PlayerInstance.y = (pY1-1) * yinput; 

if (grid[# pX1 - 1, pY1 - 1] == 0) PlayerInstance.image_index = 0;
if (grid[# pX1 - 1, pY1 - 1] == 1) PlayerInstance.image_index = 1;
if (grid[# pX1 - 1, pY1 - 1] == 2) PlayerInstance.image_index = 2;