//desenha o preenchimento da barra
var bar_width		= sprite_get_width(sprite);
var current_width	= bar_width * percent;

draw_sprite_stretched(sprite, 0, x + 3, y + 3, current_width, self.sprite_height - 6);

// desenha o contorno da barra
draw_sprite_ext(sprite_index, image_index, x, y ,xscale, yscale, image_angle, image_blend, image_alpha);