
//Shop variables
shopOpen = false;
global.shop = false;

selected = 0;
selectedAnim = 0;

//Items
items = ds_list_create();

ds_list_add(items, ["cupcake", 10, "Doce1"]);
ds_list_add(items, ["sorvete", 30, "Doce2"]);
ds_list_add(items, ["donut", 60, "Doce3"]);

itemCount = ds_list_size(items);

//GUI
guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

menuWidth = guiWidth * 0.3;
menuMargin = guiWidth * 0.1;

previewWidth = (guiWidth - (menuWidth + menuMargin));