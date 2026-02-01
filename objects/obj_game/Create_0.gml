persistent = true;

game_seconds = 0;
game_minutes = 0;
game_hours = 0;

game_days = 0;
game_months = 0;
game_years = 0;

time = 0

function clock()
{
	game_seconds++;
	
	if (game_seconds >= room_speed * 0.25)
	{
		game_minutes++;
		game_seconds = 0;
	}
	
	if (game_minutes >= 60)
	{
		game_hours++;
		game_minutes = 0;
	}
	
	// avaliar o limite de "sono" do personagem
	if (game_hours >= 24)
	{		
		game_days++;
		game_hours = 0;
	}
	
	//fazer um tratamento pra levar em conta dias com 31 dias e anos bissextos
	if (game_days >= 30)
	{
		game_months++;
		game_days = 0;
	}
	
	if (game_months >= 12)
	{
		game_years++;
		game_months = 0
	}
	
	var h = string_format(game_hours, 2, 0);
	var m = string_format(game_minutes, 2, 0);
	
	var hours = string_replace_all(h, " ", "0");
	var minutes = string_replace_all(m, " ", "0");
	
	time = $"{hours}:{minutes}";
	
	
	
}