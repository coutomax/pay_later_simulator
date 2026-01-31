flexpanel_node_style_set_position(selfText, flexpanel_edge.top, 0, flexpanel_unit.point);

if (hasntSave)
{
	image_index = 2;
}
else
{
	image_index = 0;
}

audio_play_sound(snd_button_click_up, 0, false, 0.05);

button_actions();