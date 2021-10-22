//Open Shop
if(!shopOpen && place_meeting(x, y+10, obj_player) && keyboard_check_pressed(ord("E"))){
	shopOpen = true;
	global.shop = true;
}
//Close shop
else if (shopOpen && keyboard_check_pressed(vk_space)) {
	shopOpen = false;
	global.shop = false;
}
//Shop is open
if(shopOpen) {
	selectedAnim = lerp(selectedAnim, selected, 0.1);
	
	//Down
	if (keyboard_check_pressed(vk_down)){
		selected++;
		if(selected == itemCount) selected = 0;
	}

	//Up
	if(keyboard_check_pressed(vk_up)) {
		selected--;
		if(selected < 0) selected = itemCount-1;
	}
	
	//Buy
	var arr = items[| selected];
	var item = arr[0];
	var price = arr[1];
	
	if(keyboard_check_pressed(vk_enter) && global.money >= price) {
		//Add to inventory
		ds_list_add(global.inv, item);
		
		//Reduce money
		global.money -= price;
	}
	
}



