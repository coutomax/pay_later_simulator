blinker.on_step(global.stress > 65 
				|| global.energy < 100
				|| global.life < 30); //buscar um jeito de piscar para todos os dfebuffs existentes

scr_set_debuff_position();