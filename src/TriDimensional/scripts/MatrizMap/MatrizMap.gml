MAPX = argument0;
var MAPY1 = argument1;
MAPY = MAPY1 + (MAPY1 - 1);
var Seed = argument2;

if (Seed == 0) randomize();
else random_set_seed(argument2);

//Lands
globalvar grid;
globalvar instance_grid;
grid = ds_grid_create(MAPX,MAPY);
instance_grid = ds_grid_create(MAPX,MAPY);
gridOnTiles = ds_grid_create(MAPX,MAPY);
ontilesinstance_grid = ds_grid_create(MAPX,MAPY);
gridStructures = ds_grid_create(MAPX,MAPY);
structuresinstance_grid = ds_grid_create(MAPX,MAPY);
//Sky
grid1 = ds_grid_create(MAPX,MAPY);
gridOnTiles1 = ds_grid_create(MAPX,MAPY);
//Caves
grid2 = ds_grid_create(MAPX,MAPY);
gridOnTiles2 = ds_grid_create(MAPX,MAPY);

//Set room dimension

var LandXFull = 42;
var LandYFull = 36;
var LandYHalf = 18;
var LandXHalf = 24;
var qtdLandXhalf = MAPX div 2;
var qtdLandXfull = MAPX - qtdLandXhalf;
var TotalLandX = (qtdLandXfull * LandXFull) + (qtdLandXhalf * LandXHalf); 
var TotalLandY = MAPY1 * LandYFull; 

#region Tiles and OnTiles Configuration

Tiles[4] = oWhiteTile;
Tiles[3] = oBlueTile;
Tiles[2] = oGreenTile;
Tiles[1] = oBrownTile;
Tiles[0] = oDarkBrownTile

OnTiles[0] = oOnTilesLands; // sLandsOnTiles

gridStructures[3] = sBarraks;
gridStructures[2] = sCastle;
gridStructures[1] = sKingsLife;
gridStructures[0] = sKings;

#endregion

//ex.: (MAPX = 5) (MAPY = 7)
var depth_ = (MAPX * MAPY) + 1;

var xinput = 8.25;
var yinput = 4.5;

#region Gera Tiles e OnTiles - Lands

var iX = 1;
var iY = 1;

// The Percentage is based on the next number
var landPercentage = 0;
var riverPercentage = 60;
var montainsPercentage = 65;
var Softness = 9;

// Generate Lands

// Generate Noise randomily

while (iY < MAPY+1){
	
	while (iX < MAPX+1){
		
		if ((iY mod 2 = 1 and iX mod 2 = 0) or (iY mod 2 = 0 and iX mod 2 = 1))
		{
			var rand = random(100);
			if (rand > landPercentage and rand < riverPercentage) grid[# iX-1, iY-1] = 2;
			if (rand < montainsPercentage and rand > riverPercentage) grid[# iX-1, iY-1] = 3;
			if (rand <= 100 and rand > montainsPercentage) grid[# iX-1, iY-1] = 1;
		}
		iX++;
	}
	iX = 1;
	iY++;
}

var iX = 1;
var iY = 1;


// The Percentage is based on the next number
var nothingPercentage = 0;
var grassPercentage = 20;
var BigTreesPercentage = 30;
var SmallTreesPercentage = 55;
var IronRocks = 88
var GoldRocks = 94
var SilverRocks = 98
// close at 100

var Softness = 9;

// Generate Noise randomily

while (iY < MAPY+1){
	
	while (iX < MAPX+1){
		
		if (((iY mod 2 = 1 and iX mod 2 = 0) or (iY mod 2 = 0 and iX mod 2 = 1)) and grid[# iX-1, iY-1] == 2)
		{
			var rand = random(100);
			if (rand > nothingPercentage and rand < grassPercentage) gridOnTiles[# iX-1, iY-1] = 0;
			if (rand > grassPercentage and rand < BigTreesPercentage) gridOnTiles[# iX-1, iY-1] = 10;
			if (rand > BigTreesPercentage and rand < SmallTreesPercentage) gridOnTiles[# iX-1, iY-1] = 8;
			if (rand > SmallTreesPercentage and rand < IronRocks) gridOnTiles[# iX-1, iY-1] = 11;
			if (rand > IronRocks and rand < GoldRocks) gridOnTiles[# iX-1, iY-1] = 12;
			if (rand > GoldRocks and rand < SilverRocks) gridOnTiles[# iX-1, iY-1] = 14;
			if (rand <= 100 and rand > SilverRocks) gridOnTiles[# iX-1, iY-1] = 16;
		}
		iX++;
	}
	iX = 1;
	iY++;
}

// Soften Noise based on all the neighbours

iX = 1;
iY = 1;

repeat (Softness){

	while (iY < MAPY+1){
	
		while (iX < MAPX+1){
		
			if ((iY mod 2 = 1 and iX mod 2 = 0) or (iY mod 2 = 0 and iX mod 2 = 1))
			{
					var adj_green = 0;
					var adj_brown = 0;
					var adj_blue = 0;
					
					if (grid[# iX - 1,iY - 3] == 1) adj_brown++; // UP
					if (grid[# iX - 1,iY + 1] == 1) adj_brown++; // DOWN
					if (grid[# iX - 2,iY - 2] == 1) adj_brown++; // UP_LEFT
					if (grid[# iX - 2,iY] == 1) adj_brown++; // UP_RIGHT
					if (grid[# iX,iY - 2] == 1) adj_brown++; // DOWN_LEFT
					if (grid[# iX,iY] == 1) adj_brown++; // DOWN_RIGHT
					
					if (grid[# iX - 1,iY - 3] == 2) adj_green++; // UP
					if (grid[# iX - 1,iY + 1] == 2) adj_green++; // DOWN
					if (grid[# iX - 2,iY - 2] == 2) adj_green++; // UP_LEFT
					if (grid[# iX - 2,iY] == 2) adj_green++; // UP_RIGHT
					if (grid[# iX,iY - 2] == 2) adj_green++; // DOWN_LEFT
					if (grid[# iX,iY] == 2) adj_green++; // DOWN_RIGHT
					
					if (grid[# iX - 1,iY - 3] == 3) adj_blue++; // UP
					if (grid[# iX - 1,iY + 1] == 3) adj_blue++; // DOWN
					if (grid[# iX - 2,iY - 2] == 3) adj_blue++; // UP_LEFT
					if (grid[# iX - 2,iY] == 3) adj_blue++; // UP_RIGHT
					if (grid[# iX,iY - 2] == 3) adj_blue++; // DOWN_LEFT
					if (grid[# iX,iY] == 3) adj_blue++; // DOWN_RIGHT
					
					if (adj_brown == 3) grid[# iX-1, iY-1] = 1;
					if (adj_blue == 1) grid[# iX-1, iY-1] = 3;
					if (adj_green >= 4) grid[# iX-1, iY-1] = 2;
			}
			iX++;
		}
		iX = 1;
		iY++;
	}
}

//iX = 1;
//iY = 1;

//while (iY < MAPY+1){
	
//	while (iX < MAPX+1){
		
//		if ((iY mod 2 = 1 and iX mod 2 = 0) or (iY mod 2 = 0 and iX mod 2 = 1))
//		{		
//			if (grid[# iX - 1,iY - 3] == 1) // UP
//			{
					
//			}
//			if (grid[# iX - 2,iY] == 1) // UP_RIGHT
//			{
					
//			}
					
//		}
//		iX++;
//	}
//	iX = 1;
//	iY++;
//}

iX = 1;
iY = 1;

repeat (Softness){

	while (iY < MAPY+1){
	
		while (iX < MAPX+1){
		
			if (((iY mod 2 = 1 and iX mod 2 = 0) or (iY mod 2 = 0 and iX mod 2 = 1)) and grid[# iX-1, iY-1] == 2)
			{
				var adj_grass = 0;
				var adj_BigTree = 0;
				var adj_SmallTree = 0;
					
				if (gridOnTiles[# iX - 1,iY - 3] == 9) adj_grass++; // UP
				if (gridOnTiles[# iX - 1,iY + 1] == 9) adj_grass++; // DOWN
				if (gridOnTiles[# iX - 2,iY - 2] == 9) adj_grass++; // UP_LEFT
				if (gridOnTiles[# iX - 2,iY] == 9) adj_grass++; // UP_RIGHT
				if (gridOnTiles[# iX,iY - 2] == 9) adj_grass++; // DOWN_LEFT
				if (gridOnTiles[# iX,iY] == 9) adj_grass++; // DOWN_RIGHT
					
				if (gridOnTiles[# iX - 1,iY - 3] == 8) adj_BigTree++; // UP
				if (gridOnTiles[# iX - 1,iY + 1] == 8) adj_BigTree++; // DOWN
				if (gridOnTiles[# iX - 2,iY - 2] == 8) adj_BigTree++; // UP_LEFT
				if (gridOnTiles[# iX - 2,iY] == 8) adj_BigTree++; // UP_RIGHT
				if (gridOnTiles[# iX,iY - 2] == 8) adj_BigTree++; // DOWN_LEFT
				if (gridOnTiles[# iX,iY] == 8) adj_BigTree++; // DOWN_RIGHT
					
				if (gridOnTiles[# iX - 1,iY - 3] == 10) adj_SmallTree++; // UP
				if (gridOnTiles[# iX - 1,iY + 1] == 10) adj_SmallTree++; // DOWN
				if (gridOnTiles[# iX - 2,iY - 2] == 10) adj_SmallTree++; // UP_LEFT
				if (gridOnTiles[# iX - 2,iY] == 10) adj_SmallTree++; // UP_RIGHT
				if (gridOnTiles[# iX,iY - 2] == 10) adj_SmallTree++; // DOWN_LEFT
				if (gridOnTiles[# iX,iY] == 10) adj_SmallTree++; // DOWN_RIGHT
					
				if (adj_grass >= 3) gridOnTiles[# iX-1, iY-1] = 9;
				if (adj_BigTree >= 4) gridOnTiles[# iX-1, iY-1] = 8;
				if (adj_SmallTree >= 4) gridOnTiles[# iX-1, iY-1] = 10;
			}
			iX++;
		}
		iX = 1;
		iY++;
	}
}

						

// Draw the objects in the screen based on the grid

iX = 1;
iY = 1;

while (iY < MAPY+1){
	
	while (iX < MAPX+1){
		
		if ((iY mod 2 = 1 and iX mod 2 = 0) or (iY mod 2 = 0 and iX mod 2 = 1))
		{
				var instanceTemp = instance_create_depth((iX-1) * xinput,(iY-1) * yinput,depth_,Tiles[grid[# iX-1, iY-1]]);
				instance_grid[# iX-1, iY-1] = instanceTemp;
				
				if (grid[# iX-1, iY-1] == 2)
				{
					var instanceTempOnTiles = instance_create_depth((iX-1) * xinput,(iY-1) * yinput,depth_-2,OnTiles[0]);
					instanceTempOnTiles.image_index = gridOnTiles[# iX-1, iY-1];
					ontilesinstance_grid[# iX-1, iY-1] = instanceTempOnTiles;
				}
				depth_--;
		}
		iX++;
	}
	iX = 1;
	iY++;
}

#endregion



