/*

						CRIA E INICIA TODAS AS VIARIÁVEIS GLOBAIS

*/

//booleanos
global.paused = false;
global.hasSave = false;
global.hadLunch = false;
global.hadDinner = false;
global.hadBreakfast = false;
global.hadSleep = false;

//numericos
global.max_energy = 100;
global.max_stress = 100;
global.max_life = 100;

global.money = 2000;

global.energy = 100;
global.stress = 0;
global.life = 100;

global.worked_hours = 0;
global.day_worked_hours = 0;

global.minutes = 1;
global.hours = 1;

global.day = 1;
global.week = 1;
global.week_day = 1;
global.month_day = 1;
global.month = 1;
global.year = 1;

//controllers
global.x_size = 0;
global.y_size = 0;
global.clicked = false;



#region Object days
	global.days =
	[
		{
			id: 1,
			name: "Mon",
		},
		{
			id: 2,
			name: "Tue",
		},
		{
			id: 3,
			name: "Wed",
		},
		{
			id: 4,
			name: "Thu",
		},
		{
			id: 5,
			name: "Fri",
		},
		{
			id: 6,
			name: "Sat",
		},
		{
			id: 7,
			name: "Sun",
		},
	];

#endregion

#region Object months
	global.months =
	[
		{
			id: 1,
			name: "Jan",
			days: 31
		},
		{
			id: 2,
			name: "Feb",
			days: global.year % 4 == 0 ? 29 : 28
		},
		{
			id: 3,
			name: "Mar",
			days: 31
		},
		{
			id: 4,
			name: "Apr",
			days: 30
		},
		{
			id: 5,
			name: "May",
			days: 31
		},
		{
			id: 6,
			name: "Jun",
			days: 30
		},
		{
			id: 7,
			name: "Jul",
			days: 31
		},
		{
			id: 8,
			name: "Aug",
			days: 31
		},
		{
			id: 9,
			name: "Sep",
			days: 30
		},
		{
			id: 10,
			name: "Oct",
			days: 31
		},
		{
			id: 11,
			name: "Nov",
			days: 30
		},
		{
			id: 12,
			name: "Dec",
			days: 31
		}
	];
	
#endregion