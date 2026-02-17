event_inherited();

self_panel		= "ui_shop_panel";
flipping		= false;
visible			= true;

behavior = scr_expansor_behaviors(self, self_panel, false, false, actions);

behavior.on_create();