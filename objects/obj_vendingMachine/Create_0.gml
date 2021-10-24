
//Shop variables
shopOpen = false;
global.shop = false;

selected = 0;
selectedAnim = 0;

//Items & Moedas
items = ds_list_create();
moedas = ds_list_create();

ds_list_add(items, ["cupcake", 6, "DoceA"]);
ds_list_add(items, ["sorvete", 7, "DoceB"]);
ds_list_add(items, ["donut", 8, "DoceC"]);
//ds_list_add(moedas, ["1", 1, "R$ 1,00"]);
//ds_list_add(moedas, ["2", 2, "R$ 2,00"]);
//ds_list_add(moedas, ["3", 5, "R$ 5,00"]);

itemCount = ds_list_size(items);

//GUI
guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

menuWidth = guiWidth * 0.3;
menuMargin = guiWidth * 0.1;

previewWidth = (guiWidth - (menuWidth + menuMargin));