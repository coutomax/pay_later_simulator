depth						= 9999;

game_seconds				= 0;
game_minutes				= 0;
game_hours					= 8;

game_days					= 1;
game_months					= 1;
game_years					= 1;

fade_speed					= 0.03;
actual_fade					= 0;

show_pause_dialog			= false;

clock_text_element_id		= scr_flexpanel_get_element_id("ui_clock", "fp_clock");
money_text_element_id		= scr_flexpanel_get_element_id("ui_clock","fp_money");
calendar_text_element_id	= scr_flexpanel_get_element_id("ui_clock","fp_calendar");

function clock_formatter() // formata a data e o horário
{
	
	var month_days			= global.months[global.month - 1].days;
	
	game_seconds++;
	
	if (game_seconds >= room_speed * 0.15) // game_get_speed(gamespeed_fps)
	{
		game_minutes++;
		game_seconds		= 0;
		global.minutes		= game_minutes;
	}
	
	if (game_minutes >= 60)
	{
		game_hours++;
		global.hours		= game_hours;
		game_minutes		= 0;
	}
	
	// avaliar o limite de "sono" do personagem
	if (game_hours >= 24)
	{		
		global.day++;
		global.week_day++;
		game_days			= global.day;
		game_hours			= 0;
		
		if (global.week_day >= 7)
		{
			global.week_day	= 1;
		}
	}
	
	if (game_days >= month_days)
	{
		global.month++;
		game_months			= global.month;
		game_days			= 1;
		global.day			= 1;
	}
	
	if (game_months >= 12)
	{
		global.year++;
		game_years			= global.year;
		game_months			= 1
		global.month		= 1;
	}
	
	var h					= string_format(game_hours, 2, 0);
	var m					= string_format(game_minutes, 2, 0);
	
	var hours				= string_replace_all(h, " ", "0");
	var minutes				= string_replace_all(m, " ", "0");
	
	var time				= $"{hours}:{minutes}";
	
	layer_text_text(clock_text_element_id, time);
}

function money_editor() // formata o dinheiro
{
	var money				= global.money;
	var money_format		= string_format(money, 0, 2);
	
	layer_text_text(money_text_element_id, $"c$: {money_format}");
}

function day_editor() // formata o dia, mês e ano
{
	var days				= global.days;
	var calendar			= $"{global.days[global.week_day - 1].name} {global.day} {global.months[global.month - 1].name} Year {global.year}";
	
	layer_text_text(calendar_text_element_id, calendar);
}