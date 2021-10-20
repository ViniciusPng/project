
switch(menu_index) {

	case 0:
		room_goto(Room2);
		break;
	case 1:
		show_debug_message("NEW MENU");
		break;
	case 3:
		game_end();
		break;
}