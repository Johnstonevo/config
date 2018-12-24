//
// ioflat systems.
// Theme for Attract-Mode frontend by iOtero.
// 09/2018.
// Designed for Systems Menu.
// Inspired in Silky Theme by Oomek.
// Inspired on each and every one of the themes for frontends that i have found on the internet.
// Thanks to its creators, because of them i have obtained the code and/or the ideas to make this theme.
//

class UserConfig
{
	</ 	label			= "Set Selector",
		help			= "Select the system selector type: Carrier, Grid or List.",
		options			= "carrier,grid,list",
		order			= 1,
		per_display		= "yes"
	/> 	set_selector	= "carrier";
	
	</ 	label			= "Set Selector Art",
		help			= "Select the art that will be displayed in the selector: fanart, flyer, marquee, snap or wheel.",
		options			= "fanart,flyer,marquee,snap,wheel",
		order			= 2,
		per_display		= "yes"
	/> 	set_art			= "fanart";
	
	</ 	label			= "Set Top Art", 
		help			= "Select the art that will be displayed in the top of screen: marquee, wheel.", 
		options			= "marquee,wheel", 
		order			=  3,
		per_display		= "yes" 
	/> 	set_top_art		= "marquee";

	</ 	label			= "Set Color Scheme",
		help			= "Select the scheme color: aqua, blue, brown, cream, dark, granite, green, grey, orange, pink, purple, red, wengue, white, yellow, UCLA or random",
		options			= "aqua,blue,brown,cream,dark,granite,green,grey,orange,pink,purple,red,wengue,white,yellow,UCLA,random",
		order			= 4,
		per_display		= "yes"
	/> 	set_rgb_scheme	= "blue";

    </ 	label			= "Clock",
		help			= "Shows clock and date, in Spanish or USA format.",
		options			= "spanish,usa",
		order			= 5,
		per_display		= "yes"
	/>	set_clock		= "spanish";
	
	</ 	label			= "Search Key",
		help			= "Choose the key to initiate a search.",
		options			= "custom1,custom2,custom3,custom4,custom5,custom6",
		order			= 6,
		per_display		= "yes"
	/>	search_key		= "custom1";

    </ 	label			= "Search Results",
		help			= "Choose the search method.",
		options			= "show results,next match",
		order			= 7,
		per_display		= "yes"
	/>	search_method	= "show results";
}

local my_config = fe.get_config();

fe.do_nut("mds/animate.nut");
fe.do_nut("mds/conveyor.nut");
fe.do_nut("mds/keyboard-search.nut");
fe.do_nut("mds/module-master.nut");
fe.do_nut("mds/shuffle.nut");

// Dimensions
local flx = fe.layout.width;
local fly = fe.layout.height;
local flw = fe.layout.width;
local flh = fe.layout.height;

// Coordinates
local cols = 3;
local rows = 5;
local cry = 0;
local crw = 0;
local crh = 0;
local crx = 0;
local wcy = flh*0.1926; // alto bandas sup e inf
local wcw = flw*0.2697; // ancho bandas der e izq
local wch = flh-wcy*2;  // alto bandas der e izq
local frw = wcw/cols;
local frh = wch/rows;

local slc = 7; // Número de elementos del carrier

local wmw = flw*0.2083;
local wmh = flh*0.1620;

local fny = fly*0.16;
local fnw = flw*0.25;
local fnh = flh*0.01;
local fnx = (flw-fnw)/2;

// Snap
local flxc = 0;
local flyc = 0;
local flwc = 0;
local flhc = 0;

//Carrier
local c_x = 0;
local c_y = 0;
local c_h = 0;
local c_w = 0;
local c_f = 0;

// Clock
local date_and_hour = my_config["set_clock"];

// Selector
local my_sel = my_config["set_selector"];
local my_art = my_config["set_art"];
local vert_flow = ("Horizontal" != "Horizontal");

// Animations
my_time <- 0;
try {my_time = my_config["set_ms_hide"].tointeger();} catch(e) {}
my_delay <- 0;
try {my_delay = my_config["set_ms_delay"].tointeger();} catch(e) {}

// Snap
if(my_sel != "grid")
{
	flxc = flx*0.2688;
	flyc = fly*0.1907;
	flwc = flw*0.4635;
	flhc = flh*0.6185;
}
else
{
	flxc = flx*0.2714;
	flyc = fly*0.1954;
	flwc = flw*0.4583;
	flhc = flh*0.6106;
}

// Fonts
local font_bold	 = "Antonio-Bold";
local font_reglr = "Antonio-Regular";
local font_light = "Antonio-Light";
local font_over = "Mohave-Light";

// Fonts sizes
local font_title_size = flh*0.05925;
local font_data_size  = flh*0.04166;
local font_clock_size = flh*0.03125;
local font_list_size  = flh*0.02083;
local font_over_size  = flh*0.01851;

// Colors
local Rt1 = 0;
local Gt1 = 0;
local Bt1 = 0;
local Rcl = 0;
local Gcl = 0;
local Bcl = 0;
local Ros = 0;
local Gos = 0;
local Bos = 0;
local Rt2 = 0;
local Gt2 = 0;
local Bt2 = 0;

local rgbcs = my_config["set_rgb_scheme"];

if(my_config["set_rgb_scheme"] == "random")
{
	local colors = [
	"aqua",
	"blue",
	"brown",
	"cream",
	"dark",
	"granite",
	"green",
	"grey",
	"orange",
	"pink",
	"purple",
	"red",
	"wengue",
	"white",
	"yellow",
	"UCLA"]

	rgbcs = colors[randInt(colors.len()-1)];
}
else
{
	local rgbcs = my_config["set_rgb_scheme"];
}

switch(rgbcs)
{
case "aqua":

	Rt1 = 255;
	Gt1 = 255;
	Bt1 = 255;

	Rcl =   0;
	Gcl = 180;
	Bcl = 200;

	Ros =  25;
	Gos =  95;
	Bos = 105;

	Rt2 = 255;
	Gt2 =   0;
	Bt2 =   0;

	break;

case "blue":

	Rt1 = 255;
	Gt1 = 255;
	Bt1 = 255;

	Rcl =  50;
	Gcl =  50;
	Bcl = 150;

	Ros =  25;
	Gos =  25;
	Bos =  75;

	Rt2 = 255;
	Gt2 = 100;
	Bt2 =  25;

	break;

case "brown":

	Rt1 = 255;
	Gt1 = 255;
	Bt1 = 255;

	Rcl =  90;
	Gcl =  65;
	Bcl =  55;

	Ros =  75;
	Gos =  45;
	Bos =  35;

	Rt2 = 185;
	Gt2 = 255;
	Bt2 =   0;

	break;

case "cream":

	Rt1 = 255;
	Gt1 = 255;
	Bt1 = 255;

	Rcl = 250;
	Gcl = 210;
	Bcl = 180;

	Ros = 225;
	Gos = 155;
	Bos = 110;

	Rt2 =  15;
	Gt2 = 140;
	Bt2 = 255;

	break;

case "dark":

	Rt1 = 255;
	Gt1 = 255;
	Bt1 = 255;

	Rcl =  75;
	Gcl =  75;
	Bcl =  75;

	Ros =  50;
	Gos =  50;
	Bos =  50;

	Rt2 =   0;
	Gt2 = 255;
	Bt2 =   0;

	break;

case "granite":

	Rt1 = 255;
	Gt1 = 255;
	Bt1 = 255;

	Rcl = 135;
	Gcl = 165;
	Bcl = 155;

	Ros =  95;
	Gos = 110;
	Bos = 105;

	Rt2 = 165;
	Gt2 = 250;
	Bt2 = 200;

	break;

case "green":

	Rt1 = 255;
	Gt1 = 255;
	Bt1 = 255;

	Rcl =  20;
	Gcl = 120;
	Bcl =  20;

	Ros =  15;
	Gos =  90;
	Bos =  15;

	Rt2 = 225;
	Gt2 =  25;
	Bt2 = 215;

	break;

case "grey":

	Rt1 = 255;
	Gt1 = 255;
	Bt1 = 255;

	Rcl = 125;
	Gcl = 125;
	Bcl = 125;

	Ros =  96;
	Gos =  96;
	Bos =  96;

	Rt2 = 255;
	Gt2 = 255;
	Bt2 =   0;

	break;

case "orange":

	Rt1 = 255;
	Gt1 = 255;
	Bt1 = 255;

	Rcl = 215;
	Gcl = 115;
	Bcl =  75;

	Ros = 190;
	Gos =  80;
	Bos =  30;

	Rt2 =  25;
	Gt2 = 175;
	Bt2 = 255;

	break;

case "pink":

	Rt1 = 255;
	Gt1 = 255;
	Bt1 = 255;

	Rcl = 245;
	Gcl =  85;
	Bcl = 165;

	Ros = 190;
	Gos =  50;
	Bos = 115;

	Rt2 =  35;
	Gt2 = 235;
	Bt2 =  35;

	break;

case "purple":

	Rt1 = 255;
	Gt1 = 255;
	Bt1 = 255;

	Rcl = 240;
	Gcl = 190;
	Bcl = 250;

	Ros = 200;
	Gos = 155;
	Bos = 225;

	Rt2 = 100;
	Gt2 =  95;
	Bt2 = 180;

case "red":

	Rt1 = 255;
	Gt1 = 255;
	Bt1 = 255;

	Rcl = 125;
	Gcl =   0;
	Bcl =   0;

	Ros = 100;
	Gos =   0;
	Bos =   0;

	Rt2 = 255;
	Gt2 = 255;
	Bt2 =   0;

	break;

case "wengue":

	Rt1 = 255;
	Gt1 = 255;
	Bt1 = 255;

	Rcl = 110;
	Gcl =  75;
	Bcl =  90;

	Ros =  60;
	Gos =  40;
	Bos =  50;

	Rt2 = 115;
	Gt2 = 190;
	Bt2 =  25;

	break;

case "white":

	Rt1 =   0;
	Gt1 =   0;
	Bt1 =   0;

	Rcl = 254;
	Gcl = 254;
	Bcl = 254;

	Ros = 230;
	Gos = 230;
	Bos = 230;

	Rt2 = 255;
	Gt2 =  50;
	Bt2 = 255;

	break;

case "yellow":

	Rt1 = 255;
	Gt1 = 255;
	Bt1 = 255;

	Rcl = 230;
	Gcl = 195;
	Bcl =   0;

	Ros = 155;
	Gos = 130;
	Bos =   0;

	Rt2 =   0;
	Gt2 =  50;
	Bt2 = 255;

	break;

case "UCLA":

	Rt1 = 255;
	Gt1 = 255;
	Bt1 = 255;

	Rcl =   0;
	Gcl = 165;
	Bcl = 229;

	Ros =  50;
	Gos = 132;
	Bos = 191;

	Rt2 = 255;
	Gt2 = 232;
	Bt2 =   0;

	break;
}

if(my_sel != "grid")
{
	// Snap
	local snap = fe.add_artwork("snap", flxc, flyc, flwc, flhc);
	snap.trigger = Transition.ToNewSelection;
	snap.preserve_aspect_ratio = true;

	// Search
	local search_surface = fe.add_surface(flwc+10, flhc+10);
	KeyboardSearch(search_surface)
	.search_key(my_config["search_key"])
	.mode(my_config["search_method"])
	.text_color(255,255,255,255)
	.keys_color(255,255,255,255)
	.keys_selected_color(Rt2,Gt2,Bt2,255)
	.init()
	search_surface.set_pos(flxc-5, flyc-5, flwc+10, flhc+10);
}

// Backgrounds
local bsup = fe.add_image("objs/white_point.png", 0, 0, flw, wcy);
bsup.set_rgb(Rcl,Gcl,Bcl);

local binf = fe.add_image("objs/white_point.png", 0, fly-wcy, flw, wcy);
binf.set_rgb(Rcl,Gcl,Bcl);

local bleft = fe.add_image("objs/white_point.png", 0, wcy, wcw, wch);
bleft.set_rgb(Ros,Gos,Bos);

local bright = fe.add_image("objs/white_point.png", flx-wcw, wcy, wcw, wch);
bright.set_rgb(Ros,Gos,Bos);

if(my_sel != "carrier")
{
	// System
	local title = fe.add_text("[DisplayName]", flx*0.005, fly*0.08, flw*0.75, flh*0.01);
	title.font = font_bold;
	title.charsize = font_title_size; 
	title.align = Align.Left;
	title.set_rgb(Rt1,Gt1,Bt1);
}

// Clock
local my_clock = fe.add_text("", flx*0.86, fly*0.07, flw*0.15,  flh*0.01);
my_clock.font = font_light;
my_clock.charsize = font_clock_size;
my_clock.align = Align.Centre;
my_clock.set_rgb(Rt2,Gt2,Bt2);

// Date
local my_date = fe.add_text("", flx*0.86, fly*0.11, flw*0.15,  flh*0.01);
my_date.font = font_light;
my_date.charsize = font_clock_size;
my_date.align = Align.Centre;
my_date.set_rgb(Rt2,Gt2,Bt2);

if(date_and_hour == "spanish")
{
	function update_clock(ttime)
	{
		local now = date();
		my_clock.msg = format("%02d", now.hour) + ":" + format("%02d", now.min);
		my_date.msg  = format("%02d", now.day) + "/" + format("%02d", (now.month+1)) + "/" + format("%04d", now.year);
	}
	fe.add_ticks_callback(this, "update_clock");
}

if(date_and_hour == "usa")
{
	function update_clock(ttime)
	{
		local now = date();
		my_clock.msg = format("%02d", now.hour) + ":" + format("%02d", now.min);
		my_date.msg  = format("%02d", (now.month+1)) + "/" + format("%02d", now.day) + "/" + format("%04d", now.year);
	}
	fe.add_ticks_callback(this, "update_clock");
}

if(my_sel == "carrier")
{
	// System
	local title = fe.add_text("[DisplayName]", flx*0.005, fly*0.08, wcw, flh*0.01);
	title.font = font_bold;
	title.charsize = font_title_size; 
	title.align = Align.Centre;
	title.set_rgb(Rt1,Gt1,Bt1);

	// [ListEntry]/[ListSize]
	local list = fe.add_text("[ListEntry]/[ListSize]", flx*0.705, fly*0.09, flw*0.15, flh*0.01);
	list.font = font_reglr;
	list.charsize = font_data_size;
	list.align = Align.Right;
	list.set_rgb(Rt1,Gt1,Bt1);

	// Wheels & Marquees
	cry = fly*0.001;
	crx = (flx-wmw)/2;

	// Wheels	
	if(my_config["set_top_art"] == "wheel")
	{
		::OBJECTS <- {artwk = fe.add_artwork("wheel", crx, cry, wmw, wmh)}
		OBJECTS.artwk.preserve_aspect_ratio = true;	
		
		local shrink_artwk = {when = Transition.ToNewSelection, property = "scale", start = 2.5, end = 1.0, time = 600} 
		local alpha_artwk  = {when = Transition.ToNewSelection, property = "alpha", start = 0, end = 255, time = 600} 
		animation.add(PropertyAnimation(OBJECTS.artwk, shrink_artwk));
		animation.add(PropertyAnimation(OBJECTS.artwk, alpha_artwk));
	}

	// Marquees
	if(my_config["set_top_art"] == "marquee")
	{
		::OBJECTS <- {artwk = fe.add_artwork("marquee", crx, cry, wmw, wmh)}
		OBJECTS.artwk.preserve_aspect_ratio = true;	
		
		local shrink_artwk = {when = Transition.ToNewSelection, property = "scale", start = 2.5, end = 1.0, time = 600} 
		local alpha_artwk  = {when = Transition.ToNewSelection, property = "alpha", start = 0, end = 255, time = 600} 
		animation.add(PropertyAnimation(OBJECTS.artwk, shrink_artwk));
		animation.add(PropertyAnimation(OBJECTS.artwk, alpha_artwk));
	}

	c_x = flx*0;
	c_y = wcy;
	c_h = wch*0.36;
	c_w = wcw;
	
	// Year
	local year = fe.add_text("[Year]", c_x, c_y, c_w, c_h);
	year.font = font_reglr;
	year.charsize = font_data_size;
	year.align = Align.TopCentre;
	year.set_rgb(Rt2,Gt2,Bt2);

	c_f = 1.3;

	// Title
	local title = fe.add_text("[Title]", c_x, c_y*c_f, c_w, c_h);
	title.font = font_bold;
	title.charsize = font_title_size;
	title.align = Align.TopCentre;
	title.word_wrap = true;
	title.set_rgb(Rt1,Gt1,Bt1);
	
	c_f = 2.5;

	if(date_and_hour == "spanish")
	{
		// Emulator
		local emu = fe.add_text("Emulador:", c_x, c_y*c_f, c_w, c_h);
		emu.font = font_reglr;
		emu.charsize = font_data_size;
		emu.align = Align.TopCentre;
		emu.set_rgb(Rt2,Gt2,Bt2);	
	}
	
	if(date_and_hour == "usa")
	{
		// Emulator
		local emu = fe.add_text("Emulator:", c_x, c_y*c_f, c_w, c_h);
		emu.font = font_reglr;
		emu.charsize = font_data_size;
		emu.align = Align.TopCentre;
		emu.set_rgb(Rt2,Gt2,Bt2);	
	}
	
	c_f = 2.8;
	
	// Emulator
	local emu = fe.add_text("[Manufacturer]", c_x, c_y*c_f, c_w, c_h);
	emu.font = font_reglr;
	emu.charsize = font_data_size;
	emu.align = Align.TopCentre;
	emu.set_rgb(Rt1,Gt1,Bt1);	

	c_f = 3.4;

	if(date_and_hour == "spanish")
	{
		// Total Games
		local tot = fe.add_text("Total Juegos: ", c_x, c_y*c_f, c_w, c_h);
		tot.font = font_reglr;
		tot.charsize = font_data_size;
		tot.align = Align.TopCentre;
		tot.set_rgb(Rt2,Gt2,Bt2);	
	}

	if(date_and_hour == "usa")
	{
		// Total Games
		local tot = fe.add_text("Total Games: ", c_x, c_y*c_f, c_w, c_h);
		tot.font = font_reglr;
		tot.charsize = font_data_size;
		tot.align = Align.TopCentre;
		tot.set_rgb(Rt2,Gt2,Bt2);	
	}

	c_f = 3.7;

	// Total Games
	local tot = fe.add_text("[Control]", c_x, c_y*c_f, c_w, c_h);
	tot.font = font_reglr;
	tot.charsize = font_data_size;
	tot.align = Align.TopCentre;
	tot.set_rgb(Rt1,Gt1,Bt1);	

	// Overview
	cry = wcy;
	crw = wcw;
	crh = wch;
	crx = flx-wcw;

	local my_overw = fe.add_text("[Overview]", crx, cry, crw, crh);
	my_overw.font = font_over;
	my_overw.charsize = font_over_size;
	my_overw.align = Align.TopLeft;
	my_overw.word_wrap = true;
	my_overw.set_rgb(Rt1,Gt1,Bt1);
}

// List
if(my_sel == "list")
{
	// Title
	local title = fe.add_text("[Title]", flx*0.005, fly*0.87, flw*0.7, flh*0.01);
	title.font = font_bold;
	title.charsize = font_title_size;
	title.align = Align.Left;
	title.set_rgb(Rt1,Gt1,Bt1);

	// Year
	local year = fe.add_text("[Year]", flx*0.013, fly*0.94, flw*0.7, flh*0.01);
	year.font = font_reglr;
	year.charsize = font_data_size;
	year.align = Align.Left;
	year.set_rgb(Rt2,Gt2,Bt2);

	// Wheels & Marquees
	cry = fly*0.001;
	crx = (flx-wmw)/2;

	// Wheels	
	if(my_config["set_top_art"] == "wheel")
	{
		local artwk = fe.add_artwork("wheel", crx, cry, wmw, wmh);
		artwk.preserve_aspect_ratio = true;	
	}

	// Marquees
	if(my_config["set_top_art"] == "marquee")
	{
		local artwk = fe.add_artwork("marquee", crx, cry, wmw, wmh);
		artwk.preserve_aspect_ratio = true;	
	}
	
	// [ListEntry]/[ListSize]
	local list = fe.add_text("[ListEntry]/[ListSize]", flx*0.705, fly*0.09, flw*0.15, flh*0.01);
	list.font = font_reglr;
	list.charsize = font_data_size;
	list.align = Align.Right;
	list.set_rgb(Rt1,Gt1,Bt1);

	if(date_and_hour == "spanish")
	{
		// Emulator
		local emu = fe.add_text("Emulador: "+"[Manufacturer]", flx*0.75, fly*0.87, flw*0.25, flh*0.01);
		emu.font = font_reglr;
		emu.charsize = font_data_size;
		emu.align = Align.Right;
		emu.set_rgb(Rt1,Gt1,Bt1);	

		// Total Games
		local tot = fe.add_text("Total Juegos: "+"[Control]", flx*0.75, fly*0.94, flw*0.25, flh*0.01);
		tot.font = font_reglr;
		tot.charsize = font_data_size;
		tot.align = Align.Right;
		tot.set_rgb(Rt2,Gt2,Bt2);	
	}

	if(date_and_hour == "usa")
	{
		// Emulator
		local emu = fe.add_text("Emulator: "+"[Manufacturer]", flx*0.75, fly*0.87, flw*0.25, flh*0.01);
		emu.font = font_reglr;
		emu.charsize = font_data_size;
		emu.align = Align.Right;
		emu.set_rgb(Rt1,Gt1,Bt1);	

		// Total Games
		local tot = fe.add_text("Total Games: "+"[Control]", flx*0.75, fly*0.94, flw*0.25, flh*0.01);
		tot.font = font_reglr;
		tot.charsize = font_data_size;
		tot.align = Align.Right;
		tot.set_rgb(Rt2,Gt2,Bt2);	
	}

	// Overview
	cry = wcy;
	crw = wcw;
	crh = wch;
	crx = flx-wcw;

	local my_overw = fe.add_text("[Overview]", crx, cry, crw, crh);
	my_overw.font = font_over;
	my_overw.charsize = font_over_size;
	my_overw.align = Align.TopLeft;
	my_overw.word_wrap = true;
	my_overw.set_rgb(Rt1,Gt1,Bt1);

	local flxl = flx*0.0165;
	local flwl = wcw*1.7;
	local flhl = flh*0.084;
	local bfy  = 0.1916;

	local list = Shuffle(12, "text", "[Title]");

	for(local i=0; i<12; i++)
	{
		list.slots[i].set_pos(flxl, fly*bfy, flwl, flhl);
		list.slots[i].set_rgb(Rt1,Gt1,Bt1);
		list.slots[i].charsize = font_clock_size;
		list.slots[i].align = Align.Left;
		list.slots[i].font = font_light;
		
		bfy = bfy + 0.0504;
	}

	class ShufflePow extends Shuffle
	{
		function select(slot) 
		{
			slot.visible = true;
		}
		
		function deselect(slot) 
		{
			slot.visible = false;
		}
	}

	local flxp = flx*0.003;
	local flwp = flw*0.01875;
	local flhp = flh*0.03333;	
	local pfy = 0.2096;

	local pow = ShufflePow(12, "image", "objs/arrow.png");

	for(local i=0; i<12; i++)
	{
		pow.slots[i].set_pos(flxp, fly*pfy, flwp, flhp);
		pow.slots[i].set_rgb(Rt2,Gt2,Bt2);
		pfy = pfy + 0.0504;
	}

	function fade_transitions(ttype, var, ttime) 
	{
		switch(ttype) 
		{
		case Transition.ToNewSelection:
		case Transition.ToNewList:
			
			local Wheelclick = fe.add_sound("objs/clic.mp3");
			Wheelclick.playing=true;
			
			break;
		}
		return false;
	}

	fe.add_transition_callback("fade_transitions");
}

// Grid
if(my_sel == "grid")
{
	class Grid extends Conveyor
	{
		frame = null;
		sel_x = 0;
		sel_y = 0;
		snap_art = null;
		system_counter = null;
		game_name = null;		
		top_art = null;

		game_year = null;
		game_emulator = null;
		game_total = null;
		game_overw = null;

		constructor()
		{
			base.constructor();

			sel_x = 0;
			sel_y = 0;
			stride = fe.layout.page_size = vert_flow ? rows : cols;
			fe.add_signal_handler(this, "on_signal");
			
			try
			{
				transition_ms = 1;
			}
			catch (e)
			{
				transition_ms = 220;
			}
		}	

		function update_frame()
		{
			frame.x = frw*sel_x;
			frame.y = frh*sel_y+wcy;	
			system_counter.index_offset = top_art.index_offset = snap_art.index_offset = game_name.index_offset = game_year.index_offset = game_emulator.index_offset = game_total.index_offset = game_overw.index_offset = get_sel()-selection_index;
		}

		function do_correction()
		{
			local corr = get_sel()-selection_index;
			foreach (o in m_objs)
			{
				local idx = o.m_art.index_offset-corr;
				o.m_art.rawset_index_offset(idx);
			}
		}

		function get_sel()
		{
			return vert_flow ? (sel_x*rows+sel_y) : (sel_y*cols+sel_x);
		}

		function on_signal(sig)
		{
			switch (sig)	
			{
			case "left":
				
				if(vert_flow && (sel_y > 0))
				{
					sel_y--;
					update_frame();
				}
				else if(!vert_flow && (sel_x > 0))
				{
					sel_x--;
					update_frame();
				}
				
				return true;

			case "right":
				
				if(vert_flow && (sel_y < rows-1))
				{
					sel_y++;
					update_frame();
				}
				else if(!vert_flow && (sel_x < cols-1))
				{
					sel_x++;
					update_frame();
				}
				
				return true;

			case "up":
				
				if(vert_flow && (sel_x > 0))
				{
					sel_x--;
					update_frame();
				}
				else if(!vert_flow && (sel_y > 0))
				{
					sel_y--;
					update_frame();
				}
				else
				{
					transition_swap_point=0.0;
					do_correction();
					fe.signal("prev_page");
				}			
				
				return true;

			case "down":
				
				if(vert_flow && (sel_x < cols-1))
				{
					sel_x++;
					update_frame();
				}
				else if(!vert_flow && (sel_y < rows-1))
				{
					sel_y++;
					update_frame();
				}
				else
				{
					transition_swap_point=0.0;
					do_correction();
					fe.signal("next_page");
				}
				
				return true;

			case "exit":
			case "exit_no_menu":
				
				break;

			case "select":
			default:

				// Correct the list index if it doesn't align with
				// the game our frame is on
				enabled=false; // turn conveyor off for this switch
				local frame_index = get_sel();
				fe.list.index += frame_index-selection_index;

				set_selection(frame_index);
				update_frame();
				enabled = true; // re-enable conveyor
				break;
			}
			return false;
		}

		function on_transition(ttype, var, ttime)
		{
			switch (ttype)
			{
			case Transition.FromOldSelection:
			case Transition.ToNewList:
				break;
			}

			return base.on_transition(ttype, var, ttime);
		}
		
	}

	::gridc <- Grid();

	class MySlot extends ConveyorSlot
	{
		m_num = 0;
		m_shifted = false;
		m_art = null;		

		constructor(num)
		{
			m_num = num;

			m_art = fe.add_artwork(my_art, 0, 0, frw, frh);

			
			if(my_art == "snap") 
			{
				m_art.video_flags = Vid.NoAudio;
			}
			
			m_art.preserve_aspect_ratio = true;

			base.constructor();
		}

		function on_progress(progress, var)
		{
			if(var == 0)
			{
				m_shifted = false;
			}
			
			local r = m_num/cols;
			local c = m_num % cols;

			if(abs(var) < cols)
			{
				m_art.x = c*frw;
				m_art.y = r*frh+wcy;
			}
			else
			{
				local prog = ::gridc.transition_progress;
				
				if(prog > ::gridc.transition_swap_point)
				{
					if(var > 0)
					{
						r++;
					}
					else
					{
						r--;
					}
				}

				if(var > 0)
				{
					prog *= -1;
				}

				m_art.x = c*frw;
				m_art.y = r*frh+wcy;
			}		
		}

		function swap(other)
		{
			m_art.swap(other.m_art);
		}

		function set_index_offset(io)
		{
			m_art.index_offset = io;
		}

		function reset_index_offset()
		{
			m_art.rawset_index_offset(m_base_io); 
		}

	}

	local my_array = [];

	for(local i=0; i<rows*cols; i++)
	{
		my_array.push(MySlot(i));
	}

	gridc.set_slots(my_array, gridc.get_sel());

	// Snap
	gridc.snap_art = fe.add_artwork("snap", flxc, flyc, flwc, flhc);
	gridc.snap_art.trigger = Transition.EndNavigation;
	gridc.snap_art.preserve_aspect_ratio = true;

	gridc.frame=fe.add_image("objs/selector.png", frw*2, frh*2, frw+4, frh+4);
	gridc.frame.set_rgb(Rt2,Gt2,Bt2);

	// Title
	gridc.game_name = fe.add_text("[Title]", flx*0.005, fly*0.87, flw*0.7, flh*0.01);
	gridc.game_name.font = font_bold;
	gridc.game_name.charsize = font_title_size; 
	gridc.game_name.align = Align.Left;
	gridc.game_name.set_rgb(Rt1,Gt1,Bt1);

	// [ListEntry]/[ListSize]
	gridc.system_counter = fe.add_text("[ListEntry]/[ListSize]", flx*0.705, fly*0.09, flw*0.15, flh*0.01);
	gridc.system_counter.font = font_reglr;
	gridc.system_counter.charsize = font_data_size;
	gridc.system_counter.align = Align.Right;
	gridc.system_counter.set_rgb(Rt1,Gt1,Bt1);

	// Wheels & Marquees
	cry = fly*0.001;
	crx = (flx-wmw)/2;

	// Wheels	
	if(my_config["set_top_art"] == "wheel")
	{
		gridc.top_art = fe.add_artwork("wheel", crx, cry, wmw, wmh);
		gridc.top_art.preserve_aspect_ratio = true;	
	}

	// Marquees
	if(my_config["set_top_art"] == "marquee")
	{
		gridc.top_art = fe.add_artwork("marquee", crx, cry, wmw, wmh);
		gridc.top_art.preserve_aspect_ratio = true;	
	}

	// Year
	gridc.game_year = fe.add_text("[Year]", flx*0.013, fly*0.94, flw*0.7, flh*0.01);
	gridc.game_year.font = font_reglr;
	gridc.game_year.charsize = font_data_size;
	gridc.game_year.align = Align.Left;
	gridc.game_year.set_rgb(Rt2,Gt2,Bt2);

	if(date_and_hour == "spanish")
	{
		// Emulator
		gridc.game_emulator = fe.add_text("Emulador: "+"[Manufacturer]", flx*0.75, fly*0.87, flw*0.25, flh*0.01);
		gridc.game_emulator.font = font_reglr;
		gridc.game_emulator.charsize = font_data_size;
		gridc.game_emulator.align = Align.Right;
		gridc.game_emulator.set_rgb(Rt1,Gt1,Bt1);	

		// Total Games
		gridc.game_total = fe.add_text("Total Juegos: "+"[Control]", flx*0.75, fly*0.94, flw*0.25, flh*0.01);
		gridc.game_total.font = font_reglr;
		gridc.game_total.charsize = font_data_size;
		gridc.game_total.align = Align.Right;
		gridc.game_total.set_rgb(Rt2,Gt2,Bt2);	
	}

	if(date_and_hour == "usa")
	{
		// Emulator
		gridc.game_emulator = fe.add_text("Emulator: "+"[Manufacturer]", flx*0.75, fly*0.87, flw*0.25, flh*0.01);
		gridc.game_emulator.font = font_reglr;
		gridc.game_emulator.charsize = font_data_size;
		gridc.game_emulator.align = Align.Right;
		gridc.game_emulator.set_rgb(Rt1,Gt1,Bt1);	

		// Total Games
		gridc.game_total = fe.add_text("Total Games: "+"[Control]", flx*0.75, fly*0.94, flw*0.25, flh*0.01);
		gridc.game_total.font = font_reglr;
		gridc.game_total.charsize = font_data_size;
		gridc.game_total.align = Align.Right;
		gridc.game_total.set_rgb(Rt2,Gt2,Bt2);	
	}
	
	// Overview
	cry = wcy;
	crw = wcw;
	crh = wch;
	crx = flx-wcw;

	gridc.game_overw = fe.add_text("[Overview]", crx, cry, crw, crh);
	gridc.game_overw.font = font_over;
	gridc.game_overw.charsize = font_over_size;
	gridc.game_overw.align = Align.TopLeft;
	gridc.game_overw.word_wrap = true;
	gridc.game_overw.set_rgb(Rt1,Gt1,Bt1);

	gridc.update_frame();
}

// Carrier
if(my_sel == "carrier")
{
	crx = flx*0;
	crh = wcy;
	cry = fly-wcy;
	crw = flw;

	class Carrier
	{
		surfacePosSmoothing = 0.9
		tileHeight = 0
		tileWidth = 0
		surfacePosOffset = 0
		tilesTable = []
		tilesTablePos = []
		tilesTableOffset = 0
		surfacePos = 0
		surface = null
		selector = null;
		tilesTotal = 0
		tilesOffscreen = 3

		constructor()
		{
			tilesOffscreen = 2;
			tilesTotal = slc + tilesOffscreen * 2;

			tileWidth = crw/slc;
			tileHeight = crh;

			surfacePosOffset = tilesOffscreen * tileWidth;

			surface = fe.add_surface(crw, crh);
			surface.set_pos(crx, cry, crw, crh);

			selector = surface.add_image("objs/selector.png", 0, 0, tileWidth, tileHeight);
			selector.set_rgb(Rt2,Gt2,Bt2);
			
			local index = -floor(tilesTotal / 2);

			for(local i = 0; i < tilesTotal; i++)
			{
				local obj = surface.add_artwork(my_art);

				tilesTablePos.push(tileHeight * i );
				obj.set_pos(0, 0, tileWidth, tileHeight);
				obj.preserve_aspect_ratio = true;
				obj.video_flags = Vid.NoAudio;
				obj.index_offset = index;
				tilesTable.push(obj);
				index++;
			}
			surfacePos = 0.5;

			set_keep_aspect();
			set_selector_on_top();
			
			::fe.add_transition_callback(this, "on_transition");
			::fe.add_ticks_callback(this, "tick");
		}

		function on_transition(ttype, var, ttime)
		{
			if(ttype == Transition.ToNewSelection || ttype == Transition.StartLayout)
			{
				local index = -floor(tilesTotal / 2);

				tilesTableOffset += var;

				for (local i = 0; i < tilesTotal; i++)
				{
					local indexTemp = wrap(i + tilesTableOffset, tilesTotal);

					tilesTable[indexTemp].rawset_index_offset(index);

					tilesTablePos[indexTemp] = i * tileWidth;

					index++
				}
				if(ttype == Transition.ToNewSelection)
				{
					surfacePos += var * tileWidth;
				}
			}
			return false;
		}

		function tick(tick_time)
		{
			if(surfacePos != 0)
			{
				if(surfacePos < 0.1 && surfacePos > -0.1)
				{
					surfacePos = 0;
				}

				surfacePos = surfacePos * surfacePosSmoothing;

				if(surfacePos > surfacePosOffset)
				{
					surfacePos = surfacePosOffset;
				}

				if(surfacePos < -surfacePosOffset)
				{
					surfacePos = -surfacePosOffset;
				}

				for(local i = 0; i < tilesTotal; i++)
				{
					tilesTable[i].x = surfacePos - surfacePosOffset + tilesTablePos[i];
					selector.x = tilesTotal / 2 * tileWidth + surfacePos - surfacePosOffset;
				}
			}
		}

		// wrap around value witin range 0 - N
		function wrap(i, N)
		{
			while(i < 0)
			{
				i += N;
			}

			while(i >= N)
			{
				i -= N;
			}

			return i;
		}


		function set_selector_on_top()
		{
			selector.zorder = 9999;
		}

		function set_keep_aspect ()
		{
			for(local i = 0; i < tilesTotal; i++)
			{
				tilesTable[i].preserve_aspect_ratio = true;
			}
		}
	}

	local crrr = Carrier();
	
	// Change keys
	function onsignal(sig)
	{
		switch(sig)	
		{
		case "up":
			fe.signal("");
			return true;

		case "down":
			fe.signal("");
			return true;

		case "left":
			fe.signal("prev_game");
			return true;

		case "right":
			fe.signal("next_game");
			return true;
			
		case "add_favourite":
			fe.signal("");
			return true;

		case "filters_menu":
			fe.signal("");
			return true;

		case "select":
		default:
		}
		return false;
	}

	fe.add_signal_handler(this, "onsignal");
}

