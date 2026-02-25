/*

						CRIA E INICIA TODAS AS VIARIÁVEIS GLOBAIS

*/

//booleanos
global.paused				= false;
global.hasSave				= false;
global.hadLunch				= false;
global.hadDinner			= false;
global.hadBreakfast			= false;
global.hadSleep				= false;
global.worked				= false;
global.on_the_table			= false;
global.puzzle				= false;

//controllers - booleanos
global.opened				= false;
global.is_animating			= false;
global.fading				= false;
global.new_game				= true;

//numericos
global.max_energy			= 100;
global.max_stress			= 100;
global.max_life				= 100;
global.money				= 2000;
global.energy				= 100;
global.velocity				= 4;
global.stress				= 0;
global.life					= 100;
global.worked_hours			= 0;
global.day_worked_hours		= 0;
global.minutes				= 1;
global.hours				= 8;
global.day					= 1;
global.week					= 1;
global.week_day				= 1;
global.month_day			= 1;
global.month				= 1;
global.year					= 1;
global.total_bills			= 0.0;
global.fade					= 0;

//controllers - numéricos
global.x_size				= 0;
global.y_size				= 0;

//controlers - string
global.current_action		= noone;

global.game_data			= {};

#region Object bills

	global.bills =
	[
		{
			_id		:		0,
			tag		:		"food_bill_check",
			value	:		0.0,
			status	:		[
				{
					__id		:		0,
					description	:		"unmarked"
				},
				{
					__id		:		1,
					description	:		"checked"
				},
				{
					__id		:		2,
					description	:		"canceled"
				},
			]
		},
		{
			_id		:		1,
			tag		:		"rent_bill_check",
			value	:		0.0,
			status:			[
				{
					__id		:		0,
					description	:		"unmarked"
				},
				{
					__id		:		1,
					description	:		"checked"
				},
				{
					__id		:		2,
					description	:		"canceled"
				},
			]
		},
		{
			_id		:		2,
			tag		:		"power_bill_check",
			value	:		0.0,
			status	:		[
				{
					_id			:		0,
					description	:		"unmarked"
				},
				{
					_id			:		1,
					description	:		"checked"
				},
				{
					_id			:		2,
					description	:		"canceled"
				},
			]
		},
		{
			_id		:		3,
			tag		:		"water_bill_check",
			value	:		0.0,
			status	:		[
				{
					_id			:		0,
					description	:		"unmarked"
				},
				{
					_id			:		1,
					description	:		"checked"
				},
				{
					_id			:		2,
					description	:		"canceled"
				},
			]
		},
		{
			_id		:		4,
			tag		:		"internet_bill_check",
			value	:		0.0,
			status	:		[
				{
					_id			:		0,
					description	:		"unmarked"
				},
				{
					_id			:		1,
					description	:		"checked"
				},
				{
					_id			:		2,
					description	:		"canceled"
				},
			]
		},
		{
			_id		:		5,
			tag		:		"taxes_bill_check",
			value	:		0.0,
			status	:		[
				{
					_id			:		0,
					description	:		"unmarked"
				},
				{
					_id			:		1,
					description	:		"checked"
				},
				{
					_id			:		2,
					description	:		"canceled"
				},
			]
		},
		{
			_id		:		6,
			tag		:		"credit_card_bill_check",
			value	:		0.0,
			status	:		[
				{
					_id			:		0,
					description	:		"unmarked"
				},
				{
					_id			:		1,
					description	:		"checked"
				},
				{
					_id			:		2,
					description	:		"canceled"
				},
			]
		},
		{
			_id		:		7,
			tag		:		"loan_check",
			value	:		0.0,
			status	:		[
				{
					_id			:		0,
					description	:		"unmarked"
				},
				{
					_id			:		1,
					description	:		"checked"
				},
				{
					_id			:		2,
					description	:		"canceled"
				},
			]
		},
		{
			_id		:		8,
			tag		:		"moneylender_check",
			value	:		0.0,
			status	:		[
				{
					_id			:		0,
					description	:		"unmarked"
				},
				{
					_id			:		1,
					description	:		"checked"
				},
				{
					_id			:		2,
					description	:		"canceled"
				},
			]
		}
	];

#endregion

#region Object days
	global.days =
	[
		{
			_id		:	1,
			name	:	"Mon",
		},
		{
			_id		:	2,
			name	:	"Tue",
		},
		{
			_id		:	3,
			name	:	"Wed",
		},
		{
			_id		:	4,
			name	:	"Thu",
		},
		{
			_id		:	5,
			name	:	"Fri",
		},
		{
			_id		:	6,
			name	:	"Sat",
		},
		{
			_id		:	7,
			name	:	"Sun",
		},
	];

#endregion

#region Object months
	global.months =
	[
		{
			_id		:	1,
			name	:	"Jan",
			days	:	31
		},
		{
			_id		:	2,
			name	:	"Feb",
			days	:	global.year % 4 == 0 ? 29 : 28
		},
		{
			_id		:	3,
			name	:	"Mar",
			days	:	31
		},
		{
			_id		:	4,
			name	:	"Apr",
			days	:	30
		},
		{
			_id		:	5,
			name	:	"May",
			days	:	31
		},
		{
			_id		:	6,
			name	:	"Jun",
			days	:	30
		},
		{
			_id		:	7,
			name	:	"Jul",
			days	:	31
		},
		{
			_id		:	8,
			name	:	"Aug",
			days	:	31
		},
		{
			_id		:	9,
			name	:	"Sep",
			days	:	30
		},
		{
			_id		:	10,
			name	:	"Oct",
			days	:	31
		},
		{
			_id		:	11,
			name	:	"Nov",
			days	:	30
		},
		{
			_id		:	12,
			name	:	"Dec",
			days	:	31
		}
	];
	
#endregion