function sectorinfo(){
	var sectorX = cameraX / 20;
	var sectorY = cameraY / 20;
	var sectorNum = (sectorY * 4) + (sectorX + sectorY);
	usersector = sectorNum; 
	
	if(sectorNum == 0){
		if(slimealive){
			slime_xy = [416, 416];
		}
		if(slime1alive){
			slime_xy1 = [480, 448];
		}
		
	}else {
		slime_xy = [999, 999];
		slime_xy1 = [999, 999];
	}
	
	if(sectorNum == 1){
		if(slime1_1alive){
			slime1_1_xy = [480, 448];
		}
		if(slime1_2alive){
			slime1_2_xy = [192, 224];
		}
		if(slime1_3alive){
			slime1_3_xy = [384, 256];
		}
		
	}else {
		slime1_1_xy = [999, 999];
		slime1_2_xy = [999, 999];
		slime1_3_xy = [999, 999];
	}

	if(sectorNum == 5){
		if(slime2alive){
			slime_xy2 = [288, 352];
		}
		if(slime5_2alive){
			slime5_2_xy = [384, 256];
		}
		if(slime5_3alive){
			slime5_3_xy = [224, 192];
		}
	}else {
		slime_xy2 = [999, 999];
		slime5_2_xy = [999, 999];
		slime5_3_xy = [999, 999];
	}
	
	if(sectorNum == 6){
		if(goblin6_1alive){
			goblin6_1_xy = [160, 160];
		}
		if(goblin6_2alive){
			goblin6_2_xy = [160, 320];
		}
		if(goblin6_3alive){
			goblin6_3_xy = [352, 192];
		}
	}else {
		goblin6_1_xy = [999, 999];
		goblin6_2_xy = [999, 999];
		goblin6_3_xy = [999, 999];
	}
	
	if(sectorNum == 10){
		if(goblin10_1alive){
			goblin10_1_xy = [288, 352];
		}
		if(slime10_2alive){
			slime10_2_xy = [448, 128];
		}
		if(slime10_3alive){
			slime10_3_xy = [192, 288];
		}
		
	}else {
		goblin10_1_xy = [999, 999];
		slime10_2_xy = [999, 999];
		slime10_3_xy = [999, 999];
	}
	if(sectorNum == 11){
		if(slime11_1alive){
			slime11_1_xy = [192, 160];
		}
		if(goblin11_2alive){
			goblin11_2_xy = [288, 256];
		}
		if(goblin11_3alive){
			goblin11_3_xy = [352, 96];
		}
		
	}else {
		slime11_1_xy = [999, 999];
		goblin11_2_xy = [999, 999];
		goblin11_3_xy = [999, 999];
	}
	
}