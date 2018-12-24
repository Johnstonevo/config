//
// ioflat games.
// Theme for Attract-Mode frontend by iOtero.
// 09/2018.
// Designed for All Systems.
// Inspired in Silky Theme by Oomek.
// Inspired on each and every one of the themes for frontends that i have found on the internet.
// Thanks to its creators, because of them i have obtained the code and/or the ideas to make this theme.
//

class UserConfig
{
    </ 	label			= "Clock",
		help			= "Shows clock and date, in Spanish or USA format. The icons will also be used according to the chosen format, in spanish or english language.",
		options			= "spanish,usa",
		order			= 1,
		per_display		= "yes"
	/>	set_clock		= "spanish";
	
	</ 	label			= "Set Right Art",
		help			= "Select the art that will be displayed in the right column: snap, flyer, fanart, screens, covers, titles or none.",
		options			= "snap,flyer,fanart,screens,covers,titles,none",
		order			= 2,
		per_display		= "yes"
	/> 	set_right_art	= "snap";

	</ 	label			= "Set Bottom Art",
		help			= "Select the art that will be displayed in the bottom banner: snap, flyer, fanart, screens, covers, titles or none.",
		options			= "snap,flyer,fanart,screens,covers,titles,none",
		order			= 3,
		per_display		= "yes"
	/> 	set_bottom_art	= "fanart";
	
	</ 	label			= "Set Top Art", 
		help			= "Select the art that will be displayed in the top of screen: marquee, wheel or none.", 
		options			= "marquee,wheel,none", 
		order			=  4,
		per_display		= "yes" 
	/> 	set_top_art		= "marquee";
	
	</ 	label			= "Set Color Scheme", 
		help			= "Select the scheme color: amiga, spectrum, aqua, blue, brown, cream, dark, granite, green, grey, orange, pink, purple, red, wengue, white, yellow, UCLA or random", 
		options			= "amiga,spectrum,aqua,blue,brown,cream,dark,granite,green,grey,orange,pink,purple,red,wengue,white,yellow,UCLA,random", 
		order			= 5, 
		per_display		= "yes" 
	/> 	set_rgb_scheme	= "blue";
	
	</ 	label			= "Set Rows of the List", 
		help			= "Number of rows in the List: 12 (big font) or 24 (small font)", 
		options			= "12,24", 
		order			= 6, 
		per_display		= "yes" 
	/> 	set_list_rows	= "24";
	
	</ 	label			= "CRT Effect", 
		help			= "Apply CRT effect to game videos.",
		options			= "yes,no",
		order			= 7, 
		per_display		= "yes" 
	/> 	use_crt			= "yes";
	
    </ 	label			= "Bloom Shader", 
		help			= "Apply Bloom shader to the CRT effect",
		options			= "yes,no",
		order			= 8, 
		per_display		= "yes" 
	/> 	use_bloom		= "no";
	
	</ 	label			= "Delay Time",
		help			= "The time (in milliseconds) it takes to start hiding the frames, carrier, list and wheels. Set to 0 for no hide.",
		options			= "0,1000,1500,2000,2500,3000,3500,4000,4500,5000,5500,6000",
		order			= 9,
		per_display		= "yes"
	/> 	set_ms_delay	= "3500";

	</ 	label			= "Hide Time",
		help			= "The time (in milliseconds) that it takes for the wheels, carrier, list and frames to hide.",
		options			= "100,200,300,400,500,600,650,700,800,900,1000,1100,1200",
		order			= 10,
		per_display		= "yes"
	/> 	set_ms_hide		= "650";

	</ 	label			= "Logos", 
		help			= "Use system logos or only name.", 
		options			= "yes,no", 
		order			= 11,
		per_display		= "yes" 
	/> 	use_logos		= "yes";
	
	</ 	label			= "Flags Icons", 
		help			= "Use the icons of the language flags of the games or not.", 
		options			= "yes,no", 
		order			= 12,
		per_display		= "yes" 
	/> 	use_flags		= "yes";
	
	</ 	label			= "Genres Icons", 
		help			= "Use the icons of the genres of the games or not (The genre is always indicated with text).", 
		options			= "yes,no", 
		order			= 13,
		per_display		= "yes" 
	/> 	use_icons		= "yes";
	
	</ 	label			= "Search Key", 
		help			= "Choose the key to initiate a search.", 
		options			= "custom1,custom2,custom3,custom4,custom5,custom6", 
		order			= 14, 
		per_display		= "yes" 
	/>	search_key		= "custom1";
	
    </ 	label			= "Search Results", 
		help			= "Choose the search method.", 
		options			= "show results,next match", 
		order			= 15, 
		per_display		= "yes" 
	/>	search_method	= "show results";

    </ 	label			= "Launch External Utility per System", 
		help			= "Launch an external utility per system, such AllInOneFYC, closemul, xpadder, joytokey, etc. Path complete and executable.",
		order			= 16, 
		per_display		= "yes" 
	/>	use_util_syst	= "";
	
    </ 	label			= "Arguments External Utility", 
		help			= "The arguments to pass when running the external utility per system.", 
		order			= 17, 
		per_display		= "yes" 
	/>	use_util_args	= "";

    </ 	label			= "Launch External Utility per Game", 
		help			= "Launch an external utility with personalized configuration for each game. Path complete and executable. \nYou have to create a custom configuration file with the name of each game and put it in the same path of the executable.",
		order			= 18, 
		per_display		= "yes" 
	/>	use_util_game	= "";

    </ 	label			= "Extension of External Utility per Game", 
		help			= "Extension to add to the name of the game used by the external utility per game: ini, txt, etc. \nTo obtain the configuration file, as: GameName.ini, GameName.txt, etc.", 
		order			= 19, 
		per_display		= "yes" 
	/>	use_util_exts	= "";
}

local my_config = fe.get_config();

fe.do_nut("mds/animate.nut");
fe.do_nut("mds/file-format.nut");
fe.do_nut("mds/keyboard-search.nut");
fe.do_nut("mds/module-master.nut");
fe.do_nut("mds/shuffle.nut");

// Dimensions
local flx = fe.layout.width;
local fly = fe.layout.height;
local flw = fe.layout.width;
local flh = fe.layout.height;

// Carriers
local slc = 5;
local slf = 5;
local cry = 0;
local crw = 0;
local crh = 0;
local crx = 0;
local tilePadding = 8;
local wcw = flw*0.15; 				  
local wch = (flh/slc) - tilePadding;  
local icw = flw*0.0651;               
local ich = flh*0.1155;               
local wmw = wcw; 					  
local wmh = flh*0.1166;               
local fny = fly*0.16;                 
local fnw = flw*0.25;                 
local fnh = flh*0.01;                 
local fnx = (flw-fnw)/2;              
local fgw = flw*0.0313;
local fgh = flh*0.0370;			
local my_snap = "";
local my_fly = "";
local my_arg = "";

// Clock
local date_and_hour = my_config["set_clock"];

// Snap
local flxc = flx*0.2688;
local flyc = fly*0.1907;
local flwc = flw*0.4635;
local flhc = flh*0.6185;

// Animations
my_time <- 0;
try {my_time = my_config["set_ms_hide"].tointeger();} catch(e) {}
my_delay <- 0;
try {my_delay = my_config["set_ms_delay"].tointeger();} catch(e) {}

// Fonts
local font_bold = "Antonio-Bold";
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
case "amiga":

	Rt1 =   0;
	Gt1 =   0;
	Bt1 =   0;
	
	Rcl = 230;
	Gcl = 230;
	Bcl = 230;

	Ros = 254;
	Gos = 254;
	Bos = 254;

	Rt2 =   0;
	Gt2 =   0;
	Bt2 = 255;
	
	break;
	
case "spectrum":

	Rt1 = 255;
	Gt1 = 255;
	Bt1 = 255;
	
	Rcl =  50;
	Gcl =  50;
	Bcl =  50;

	Ros =   0;
	Gos =   0;
	Bos =   0;

	Rt2 =   0;
	Gt2 =   0;
	Bt2 = 255;

	break;
	
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

// Snap
local snap = fe.add_artwork("snap", flxc, flyc, flwc, flhc);
snap.trigger = Transition.EndNavigation;
snap.preserve_aspect_ratio = true;

// CRT
if(my_config["use_crt"] == "yes")
{
	local shader_cgwg = fe.add_shader(Shader.VertexAndFragment, "objs/shaders/CRT-geom.vsh", "objs/shaders/CRT-geom.fsh");
	shader_cgwg.set_param("CRTgamma", 2.4);         
	shader_cgwg.set_param("monitorgamma", 2.2);     
	shader_cgwg.set_param("overscan", 0.99, 0.99);  
	shader_cgwg.set_param("aspect", 1.0, 0.75);     
	shader_cgwg.set_param("d", 1.3);                
	shader_cgwg.set_param("R", 2.5);                
	shader_cgwg.set_param("cornersize", 0.02);      
	shader_cgwg.set_param("cornersmooth", 80);      
	shader_cgwg.set_texture_param("texture");

	local surface = fe.add_surface(flwc, flhc);

	local CRT = surface.add_artwork("snap", flx*0, fly*0, surface.width, surface.height);
	surface.set_pos(flxc, flyc, flwc, flhc);

	CRT.shader = shader_cgwg;

	if(my_config["use_bloom"] == "yes")
	{
		local shader_bloom = fe.add_shader(Shader.Fragment, "objs/shaders/bloom.fsh");
		shader_bloom.set_param("bloom_spread", 0.000695);
		shader_bloom.set_param("bloom_power", 0.128);
		shader_bloom.set_texture_param("mpass_texture");
	}

	function CRT_transitions(ttype, var, ttime) 
	{
		switch (ttype)
		{
		case Transition.ToNewList:	
		case Transition.FromOldSelection:
		case Transition.ToNewSelection:
			CRT.width = surface.subimg_width;
			CRT.height = surface.subimg_height;
			CRT.shader.set_param("inputSize", surface.width, surface.height); 
			CRT.shader.set_param("outputSize", surface.width, surface.height);
			CRT.shader.set_param("textureSize", surface.width, surface.height);
			break;
		}
		return false;
	}

	fe.add_transition_callback("CRT_transitions");
}

// Search 
local search_surface = fe.add_surface(flwc+10, flhc+10);
KeyboardSearch(search_surface)
    .search_key(my_config["search_key"])
    .mode(my_config["search_method"])
    .text_color(Rt1,Gt1,Bt1,255)
    .keys_color(Rt1,Gt1,Bt1,255)
    .keys_selected_color(Rt2,Gt2,Bt2,255)
    .init()
search_surface.set_pos(flxc-5, flyc-5, flwc+10, flhc+10);

// Backgrounds
local bsup = fe.add_image("objs/sys/white_point.png", 0, 0, flw, wch);
bsup.set_rgb(Rcl,Gcl,Bcl); 

local binf = fe.add_image("objs/sys/white_point.png", 0, fly-wch, flw, wch);
binf.set_rgb(Rcl,Gcl,Bcl); 

local bleft = fe.add_image("objs/sys/white_point.png", 0, wch, wcw*1.8, flh-wch*2);
bleft.set_rgb(Ros,Gos,Bos); 

local bright = fe.add_image("objs/sys/white_point.png", flx-wcw*1.8, wch, wcw*1.8, flh-wch*2);
bright.set_rgb(Ros,Gos,Bos); 

if(my_config["set_rgb_scheme"] == "amiga")
{
	local back = fe.add_image("objs/sys/amiga-back.png", 0, 0, flw, flh);
}

if(my_config["set_rgb_scheme"] == "spectrum")
{
	local back = fe.add_image("objs/sys/spectrum-back.png", 0, 0, flw, flh);
}

// Logo
if(my_config["use_logos"] == "yes")
{
	// Logo
	local emus = fe.add_image("objs/emulators/[Emulator]", flx*0.005, fly*0.0001, flw*0.2083, flh*0.1620);
	emus.preserve_aspect_ratio = true;
	emus.trigger = Transition.EndNavigation;
}
else
{
	// Emulator
	local title = fe.add_text("[Emulator]", flx*0.005, fly*0.09, flw*0.75, flh*0.01);
	title.font = font_bold;
	title.charsize = font_title_size; 
	title.align = Align.Left;
	title.set_rgb(Rt1,Gt1,Bt1);
}

// Flags
if(my_config["use_flags"] == "yes")
{
	::OBJECTS <- {artwk = fe.add_image("objs/flags/[Control].png", 0, wch-fgh, fgw, fgh)}
	OBJECTS.artwk.preserve_aspect_ratio = true;	
	
	local shrink_artwk = {when = Transition.ToNewSelection, property = "x", start = wcw, end = 0, time = my_time} 
	local alpha_artwk  = {when = Transition.ToNewSelection, property = "alpha", start = 0, end = 255, time = my_time} 
	animation.add(PropertyAnimation(OBJECTS.artwk, shrink_artwk));
	animation.add(PropertyAnimation(OBJECTS.artwk, alpha_artwk));

}
// Wheels & Marquees
cry = fly*0.001;
crx = (flx-wmw)/2;

// Wheels	
if(my_config["set_top_art"] == "wheel")
{
	::OBJECTS <- {artwk = fe.add_artwork("wheel", crx, cry, wmw, wmh)}
	OBJECTS.artwk.preserve_aspect_ratio = true;	
	
	local shrink_artwk = {when = Transition.ToNewSelection, property = "scale", start = 2.5, end = 1.0, time = my_time} 
	local alpha_artwk  = {when = Transition.ToNewSelection, property = "alpha", start = 0, end = 255, time = my_time} 
	animation.add(PropertyAnimation(OBJECTS.artwk, shrink_artwk));
	animation.add(PropertyAnimation(OBJECTS.artwk, alpha_artwk));
}

// Marquees
if(my_config["set_top_art"] == "marquee")
{
	::OBJECTS <- {artwk = fe.add_artwork("marquee", crx, cry, wmw, wmh)}
	OBJECTS.artwk.preserve_aspect_ratio = true;	
	
	local shrink_artwk = {when = Transition.ToNewSelection, property = "scale", start = 2.5, end = 1.0, time = my_time} 
	local alpha_artwk  = {when = Transition.ToNewSelection, property = "alpha", start = 0, end = 255, time = my_time} 
	animation.add(PropertyAnimation(OBJECTS.artwk, shrink_artwk));
	animation.add(PropertyAnimation(OBJECTS.artwk, alpha_artwk));
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

// FilterLeft
local FilterLeft = fe.add_text("[FilterName]", fnx-fnw, fny, fnw, fnh);
FilterLeft.font = font_light;
FilterLeft.filter_offset = -1;
FilterLeft.charsize = font_data_size;
FilterLeft.align = Align.Right;
FilterLeft.set_rgb(Rt2,Gt2,Bt2);	

// FilterCentre
local FilterCentre = fe.add_text("[FilterName]", fnx, fny, fnw, fnh);
FilterCentre.font = font_reglr;
FilterCentre.filter_offset = 0;
FilterCentre.charsize = font_data_size;
FilterCentre.align = Align.Centre;
FilterCentre.set_rgb(Rt1,Gt1,Bt1);	

// FilterRight
local FilterRight = fe.add_text("[FilterName]", fnx+fnw, fny, fnw, fnh);
FilterRight.font = font_light;
FilterRight.filter_offset = 1;
FilterRight.charsize = font_data_size;
FilterRight.align = Align.Left;
FilterRight.set_rgb(Rt2,Gt2,Bt2);	

// [ListEntry]/[ListSize] 
local list = fe.add_text("[ListEntry]/[ListSize]", flx*0.705, fly*0.09, flw*0.15, flh*0.01);
list.font = font_reglr;
list.charsize = font_data_size;
list.align = Align.Right;
if(my_config["set_rgb_scheme"] == "spectrum") 
{
	list.set_rgb(Rt2,Gt2,Bt2);
}
else
{
	list.set_rgb(Rt1,Gt1,Bt1);
}

// Favourite Icon
local favouriteIcon = fe.add_image("objs/sys/fav.png", (flx-icw)/2, fly*0.825, icw, ich);

function on_transition(ttype, var, ttime)
{
	if(ttype == Transition.ToGame) 
	{
		// External Utility per Game
		if(my_config["use_util_game"] != "")
		{
			local my_path = my_config["use_util_game"];
			
			local my_name = fe.game_info(Info.Name);
			
			local my_ext = my_config["use_util_exts"];
			
			if(my_path.find("AllInOneFYC") != null)
			{
				my_arg = @""""+my_name+"."+my_ext+@"""";
			}
			else
			{
				my_arg = my_name+"."+my_ext;
			}
			
			local eug = fe.plugin_command_bg(my_path, my_arg);
		}

		// External Utility per System
		if(my_config["use_util_syst"] != "")
		{
			local my_path = my_config["use_util_syst"];
			
			my_arg = my_config["use_util_args"];
			
			local eus = fe.plugin_command_bg(my_path, my_arg);
		}
	}
	
	if(ttype == Transition.ToNewSelection || Transition.ToNewList) 
	{
		if(fe.game_info(Info.Favourite, var) == "1")
		{
			favouriteIcon.visible = true;
		}
		else
		{
			favouriteIcon.visible = false;
		}
	}
	return false;
}
::fe.add_transition_callback(this, "on_transition");

// Title	
local title = fe.add_text("[Title]", flx*0.005, fly*0.87, flw*0.7, flh*0.01);
title.font = font_bold;
title.charsize = font_title_size; 
title.align = Align.Left;
title.set_rgb(Rt1,Gt1,Bt1);

// Year Manufacturer
local year = fe.add_text("[Year]  [Manufacturer]", flx*0.013, fly*0.94, flw*0.7, flh*0.01);
year.font = font_reglr;
year.charsize = font_data_size;
year.align = Align.Left;
year.set_rgb(Rt2,Gt2,Bt2);	

// Category icons
if(my_config["use_icons"] == "yes")
{
	if(date_and_hour == "spanish")
	{
		local icons = fe.add_image("objs/icons/spanish/[Category].png", flx*0.9, fly*0.845, icw, ich);
		icons.preserve_aspect_ratio = true;
		icons.trigger = Transition.EndNavigation;
		
		// PlayedCount
		local played = fe.add_text("Jugado: " + "[PlayedCount]", flx*0.6, fly*0.94, flw*0.25, flh*0.01);
		played.font = font_reglr;
		played.charsize = font_data_size;
		played.align = Align.Right;
		played.set_rgb(Rt1,Gt1,Bt1);	

	}
	
	if(date_and_hour == "usa")
	{
		local icons = fe.add_image("objs/icons/english/[Category].png", flx*0.9, fly*0.845, icw, ich);
		icons.preserve_aspect_ratio = true;
		icons.trigger = Transition.EndNavigation;

		// PlayedCount
		local played = fe.add_text("Played: " + "[PlayedCount]", flx*0.6, fly*0.94, flw*0.25, flh*0.01);
		played.font = font_reglr;
		played.charsize = font_data_size;
		played.align = Align.Right;
		played.set_rgb(Rt1,Gt1,Bt1);	
	}

	// Category
	local category = fe.add_text("[Category]", flx*0.6, fly*0.87, flw*0.25, flh*0.01);
	category.font = font_reglr;
	category.charsize = font_data_size;
	category.align = Align.Right;
	category.set_rgb(Rt1,Gt1,Bt1);	
}
else
{
	if(date_and_hour == "spanish")
	{
		// PlayedCount
		local played = fe.add_text("Jugado: " + "[PlayedCount]", flx*0.75, fly*0.94, flw*0.25, flh*0.01);
		played.font = font_reglr;
		played.charsize = font_data_size;
		played.align = Align.Right;
		played.set_rgb(Rt1,Gt1,Bt1);	

	}
	
	if(date_and_hour == "usa")
	{
		// PlayedCount
		local played = fe.add_text("Played: " + "[PlayedCount]", flx*0.75, fly*0.94, flw*0.25, flh*0.01);
		played.font = font_reglr;
		played.charsize = font_data_size;
		played.align = Align.Right;
		played.set_rgb(Rt1,Gt1,Bt1);	
	}

	// Category
	local category = fe.add_text("[Category]", flx*0.75, fly*0.87, flw*0.25, flh*0.01);
	category.font = font_reglr;
	category.charsize = font_data_size;
	category.align = Align.Right;
	category.set_rgb(Rt1,Gt1,Bt1);	
}


// Paths Search
local path_emulator = FeConfigDirectory + "emulators\\" + fe.game_info(Info.Emulator) + ".cfg";
local path_screens;
local path_covers;
local path_titles;

local f = txt.loadFile(path_emulator);

foreach(line in f.lines)
{
	local isLine = line.find("screens");
	if(isLine != null) 
	{
		path_screens = fe.path_expand(strip(line.slice(20)));
	}
	
	local isLine = line.find("covers");
	if(isLine != null) 
	{
		path_covers = fe.path_expand(strip(line.slice(20)));
	}

	local isLine = line.find("titles");
	if(isLine != null) 
	{
		path_titles = fe.path_expand(strip(line.slice(20)));
	}
}

// Overview
cry = wch;
crw = wcw*1.8;
crh = flh-wch*2;
crx = flx-wcw*1.8;

local my_overw = fe.add_text("[Overview]", crx, cry, crw, crh);
my_overw.font = font_over;
my_overw.charsize = font_over_size;
my_overw.align = Align.TopLeft;
my_overw.word_wrap = true;
my_overw.set_rgb(Rt1,Gt1,Bt1);

// Right Art
if(my_config["set_right_art"] == "snap") my_snap ="snap";
if(my_config["set_right_art"] == "flyer") my_snap ="flyer";
if(my_config["set_right_art"] == "fanart") my_snap ="fanart";
if((my_config["set_right_art"] == "snap") || (my_config["set_right_art"] == "flyer") || (my_config["set_right_art"] == "fanart"))
{
	cry = fly*0;
	crw = wcw;
	crh = flh;
	crx = flw-crw;

	class CarrierSnaps
	{
		surfacePosSmoothing = 0.9;
		tileHeight = 0;
		tileWidth = 0;
		surfacePosOffset = 0;
		tilesTable = [];
		tilesTablePos = [];
		tilesTableOffset = 0;
		surfacePos = 0;
		surface = null;
		surfaceBackground = null;
		selector = null;
		tilesTotal = 0;
		tilesOffscreen = 3;

		constructor()
		{
			tilesOffscreen = 2;
			tilesTotal = slc + tilesOffscreen * 2;

			tileWidth = crw;
			tileHeight = crh / slc;
			surfacePosOffset = tilesOffscreen * tileHeight;

			::OBJECTS <- {surface = fe.add_surface(crw, crh)}
			OBJECTS.surface.set_pos(crx, cry, crw, crh);
			surfaceBackground = OBJECTS.surface.add_image("objs/sys/white_point.png", 0, 0, crw, crh);
			surfaceBackground.set_rgb(Ros,Gos,Bos);
			selector = OBJECTS.surface.add_image("objs/sys/selector.png", 0, 0, tileWidth, tileHeight);
			selector.set_rgb(Rt2,Gt2,Bt2);

			local index = -floor(tilesTotal / 2);

			for(local i = 0; i < tilesTotal; i++)
			{
				local obj = OBJECTS.surface.add_artwork(my_snap);
				tilesTablePos.push(tileWidth * i + (tilePadding / 2));
				obj.set_pos(tilePadding, 0, tileWidth - tilePadding * 2, tileHeight - tilePadding * 2);

				obj.preserve_aspect_ratio = false;
				obj.index_offset = index;
				obj.video_flags = Vid.NoAudio;
				tilesTable.push(obj);
				index++;
			}
			surfacePos = 0.5;

			set_keep_aspect();

			::fe.add_transition_callback(this, "on_transition");
			::fe.add_ticks_callback(this, "tick");

			local move_surface1 = {when = Transition.ToNewSelection, property = "x", start = crx + crw, end = crx, time = 1}
			local move_surface2 = {when = When.ToNewSelection, property = "x", start =crx, end = crx + crw*1.5, time = my_time, delay=my_delay}
			animation.add(PropertyAnimation(OBJECTS.surface, move_surface1));
			animation.add(PropertyAnimation(OBJECTS.surface, move_surface2));
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

					tilesTablePos[indexTemp] = i * tileHeight + tilePadding;
					index++;
				}

				if(ttype == Transition.ToNewSelection)
				{
					surfacePos += var * tileHeight;
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

				surfacePos = surfacePos * surfacePosSmoothing

				if(surfacePos > surfacePosOffset)
				{
					surfacePos = surfacePosOffset;
				}

				if(surfacePos < -surfacePosOffset)
				{
					surfacePos = -surfacePosOffset;
				}

				for (local i = 0; i < tilesTotal; i++)
				{
					tilesTable[i].y = surfacePos - surfacePosOffset + tilesTablePos[i];
					selector.y = tilesTotal / 2 * tileHeight + surfacePos - surfacePosOffset;
				}
			}
		}

		// wrap around value witin range 0 - N
		function wrap(i, N)
		{
			while (i < 0)
			{
				i += N;
			}

			while (i >= N)
			{
				i -= N;
			}

			return i
		}

		function set_selector_on_top()
		{
			selector.zorder = 9999;
		}

		function set_keep_aspect()
		{
			for (local i = 0; i < tilesTotal; i++)
			{
				tilesTable[i].preserve_aspect_ratio = true;
			}
		}

	}

	local crrr = CarrierSnaps();
}

if(my_config["set_right_art"] == "screens") my_snap = path_screens +"/[Name].png";
if(my_config["set_right_art"] == "covers") my_snap = path_covers +"/[Name].png";
if(my_config["set_right_art"] == "titles") my_snap = path_titles +"/[Name].png";
if((my_config["set_right_art"] == "screens") || (my_config["set_right_art"] == "covers") || (my_config["set_right_art"] == "titles"))
{
	cry = fly*0;
	crw = wcw;
	crh = flh;
	crx = flw-crw;

	class CarrierSnaps
	{
		surfacePosSmoothing = 0.9;
		tileHeight = 0;
		tileWidth = 0;
		surfacePosOffset = 0;
		tilesTable = [];
		tilesTablePos = [];
		tilesTableOffset = 0;
		surfacePos = 0;
		surface = null;
		surfaceBackground = null;
		selector = null;
		tilesTotal = 0;
		tilesOffscreen = 3;

		constructor()
		{
			tilesOffscreen = 2;
			tilesTotal = slc + tilesOffscreen * 2;

			tileWidth = crw;
			tileHeight = crh / slc;
			surfacePosOffset = tilesOffscreen * tileHeight;

			::OBJECTS <- {surface = fe.add_surface(crw, crh)}
			OBJECTS.surface.set_pos(crx, cry, crw, crh);
			surfaceBackground = OBJECTS.surface.add_image("objs/sys/white_point.png", 0, 0, crw, crh);
			surfaceBackground.set_rgb(Ros,Gos,Bos);
			selector = OBJECTS.surface.add_image("objs/sys/selector.png", 0, 0, tileWidth, tileHeight);
			selector.set_rgb(Rt2,Gt2,Bt2);
			
			local index = -floor(tilesTotal / 2);

			for(local i = 0; i < tilesTotal; i++)
			{
				local obj = OBJECTS.surface.add_image(my_snap);
				tilesTablePos.push(tileWidth * i + (tilePadding / 2));
				obj.set_pos(tilePadding, 0, tileWidth - tilePadding * 2, tileHeight - tilePadding * 2);

				obj.preserve_aspect_ratio = false;
				obj.index_offset = index;
				obj.video_flags = Vid.NoAudio;
				tilesTable.push(obj);
				index++;
			}
			surfacePos = 0.5;

			set_keep_aspect();

			::fe.add_transition_callback(this, "on_transition");
			::fe.add_ticks_callback(this, "tick");

			local move_surface1 = {when = Transition.ToNewSelection, property = "x", start = crx + crw, end = crx, time = 1}
			local move_surface2 = {when = When.ToNewSelection, property = "x", start =crx, end = crx + crw*1.5, time = my_time, delay=my_delay}
			animation.add(PropertyAnimation(OBJECTS.surface, move_surface1));
			animation.add(PropertyAnimation(OBJECTS.surface, move_surface2));
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

					tilesTablePos[indexTemp] = i * tileHeight + tilePadding;
					index++;
				}

				if(ttype == Transition.ToNewSelection)
				{
					surfacePos += var * tileHeight;
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

				surfacePos = surfacePos * surfacePosSmoothing

				if(surfacePos > surfacePosOffset)
				{
					surfacePos = surfacePosOffset;
				}

				if(surfacePos < -surfacePosOffset)
				{
					surfacePos = -surfacePosOffset;
				}

				for (local i = 0; i < tilesTotal; i++)
				{
					tilesTable[i].y = surfacePos - surfacePosOffset + tilesTablePos[i];
					selector.y = tilesTotal / 2 * tileHeight + surfacePos - surfacePosOffset;
				}
			}
		}

		// wrap around value witin range 0 - N
		function wrap(i, N)
		{
			while (i < 0)
			{
				i += N;
			}

			while (i >= N)
			{
				i -= N;
			}

			return i
		}

		function set_selector_on_top()
		{
			selector.zorder = 9999;
		}

		function set_keep_aspect()
		{
			for (local i = 0; i < tilesTotal; i++)
			{
				tilesTable[i].preserve_aspect_ratio = true;
			}
		}

	}
	local crrr = CarrierSnaps();
}

// Bottom Art
if(my_config["set_bottom_art"] == "snap") my_fly ="snap";
if(my_config["set_bottom_art"] == "flyer") my_fly ="flyer";
if(my_config["set_bottom_art"] == "fanart") my_fly ="fanart";
if((my_config["set_bottom_art"] == "flyer") || (my_config["set_bottom_art"] == "fanart") || (my_config["set_bottom_art"] == "snap"))
{
	crx = flx*0;
	crh = wch;
	cry = fly-wch;

	if((my_config["set_right_art"] == "none")&&(my_config["use_icons"] == "no"))
	{
		crw = flw;
	}
	else
	{
		crw = flw-wcw;
	}

	class CarrierFlyers
	{
		surfacePosSmoothing = 0.9;
		tileHeight = 0;
		tileWidth = 0;
		surfacePosOffset = 0;
		tilesTable = [];
		tilesTablePos = [];
		tilesTableFlag = [];
		tilesTableOffset = 0;
		surfacePos = 0;
		surface = null;
		surfaceBackground = null;
		selector = null;
		flag = null;
		tilesTotal = 0;
		tilesOffscreen = 3;

		constructor()
		{
			tilesOffscreen = 2;
			tilesTotal = slf + tilesOffscreen * 2;

			tileWidth = crw / slf;
			tileHeight = crh;
			surfacePosOffset = tilesOffscreen * tileWidth;

			::OBJECTS <- {surface = fe.add_surface(crw, crh)}
			OBJECTS.surface.set_pos(crx, cry, crw, crh);
			surfaceBackground = OBJECTS.surface.add_image("objs/sys/white_point.png", 0, 0, crw, crh);
			surfaceBackground.set_rgb(Rcl,Gcl,Bcl);
			selector = OBJECTS.surface.add_image("objs/sys/selector.png", 0, 0, tileWidth, tileHeight);
			selector.set_rgb(Rt2,Gt2,Bt2);

			local index = -floor(tilesTotal / 2);

			for(local i = 0; i < tilesTotal; i++)
			{
				local obj = OBJECTS.surface.add_artwork(my_fly);
				obj.set_pos(0, tilePadding, tileWidth - tilePadding * 2, tileHeight - tilePadding * 2);
				obj.preserve_aspect_ratio = true;
				obj.video_flags = Vid.ImagesOnly;
				obj.index_offset = index;

				tilesTablePos.push(tileHeight * i + (tilePadding / 2));
				tilesTable.push(obj);
				index++;
			}
			surfacePos = 0.5;

			set_keep_aspect();

			::fe.add_transition_callback(this, "on_transition");
			::fe.add_ticks_callback(this, "tick");

			local move_surface1 = {when = Transition.ToNewSelection, property = "y", start = cry + crh, end = cry, time = 1}
			local move_surface2 = {when = When.ToNewSelection, property = "y", start =cry, end = cry + crh*1.5, time = my_time, delay=my_delay}
			animation.add(PropertyAnimation(OBJECTS.surface, move_surface1));
			animation.add(PropertyAnimation(OBJECTS.surface, move_surface2));
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

					tilesTablePos[indexTemp] = i * tileWidth + tilePadding;

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

	local crrr = CarrierFlyers();
}

if(my_config["set_bottom_art"] == "screens") my_fly =path_screens +"/[Name].png";
if(my_config["set_bottom_art"] == "covers") my_fly = path_covers +"/[Name].png";
if(my_config["set_bottom_art"] == "titles") my_fly = path_titles +"/[Name].png";
if((my_config["set_bottom_art"] == "screens") || (my_config["set_bottom_art"] == "covers") || (my_config["set_bottom_art"] == "titles"))
{
	crx = flx*0;
	crh = wch;
	cry = flh-wch;
	fgw = flw*0.0313;
	fgh = flh*0.0370;
	
	if((my_config["set_right_art"] == "none")&&(my_config["use_icons"] == "no"))
	{
		crw = flw;
	}
	else
	{
		crw = flw-wcw;
	}

	class CarrierFlyers
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
		surfaceBackground = null
		selector = null
		tilesTotal = 0
		tilesOffscreen = 3

		constructor()
		{
			tilesOffscreen = 2;
			tilesTotal = slf + tilesOffscreen * 2;

			tileWidth = crw / slf;
			tileHeight = crh;
			surfacePosOffset = tilesOffscreen * tileWidth;

			::OBJECTS <- {surface = fe.add_surface(crw, crh)}
			OBJECTS.surface.set_pos(crx, cry, crw, crh);
			surfaceBackground = OBJECTS.surface.add_image("objs/sys/white_point.png", 0, 0, crw, crh);
			surfaceBackground.set_rgb(Rcl,Gcl,Bcl);
			selector = OBJECTS.surface.add_image("objs/sys/selector.png", 0, 0, tileWidth, tileHeight);
			selector.set_rgb(Rt2,Gt2,Bt2);

			local index = -floor(tilesTotal / 2);

			for(local i = 0; i < tilesTotal; i++)
			{
				local obj = OBJECTS.surface.add_image(my_fly);

				tilesTablePos.push(tileHeight * i + (tilePadding / 2));
				obj.set_pos(0, tilePadding, tileWidth - tilePadding * 2, tileHeight - tilePadding * 2);
				obj.preserve_aspect_ratio = true;
				obj.index_offset = index;
				tilesTable.push(obj);
				index++;
			}
			surfacePos = 0.5;

			set_keep_aspect();

			::fe.add_transition_callback(this, "on_transition");
			::fe.add_ticks_callback(this, "tick");

			local move_surface1 = {when = Transition.ToNewSelection, property = "y", start = cry + crh, end = cry, time = 1}
			local move_surface2 = {when = When.ToNewSelection, property = "y", start =cry, end = cry + crh*1.5, time = my_time, delay=my_delay}
			animation.add(PropertyAnimation(OBJECTS.surface, move_surface1));
			animation.add(PropertyAnimation(OBJECTS.surface, move_surface2));
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

					tilesTablePos[indexTemp] = i * tileWidth + tilePadding;

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

	local crrr = CarrierFlyers();
}

// List
if(my_config["set_list_rows"] == "24")
{

local flxl = flx*0.01;
local flwl = wcw*1.7;
local flhl = flh*0.042;
local bfy  = 0.194;

local list = Shuffle(24, "text", "[Title]");

for(local i=0; i<24; i++)
{
	list.slots[i].set_pos(flxl, fly*bfy, flwl, flhl);
	list.slots[i].set_rgb(Rt1,Gt1,Bt1);
	list.slots[i].charsize = font_list_size;
	list.slots[i].align = Align.Left;
	list.slots[i].font = font_light;
	
	bfy = bfy + 0.0252;
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

local flxp = flx*0.004;
local flwp = flw*0.0104;
local flhp = flh*0.0185;	
local pfy = 0.202;

local pow = ShufflePow(24, "image", "objs/sys/arrow.png");

for(local i=0; i<24; i++)
{
	pow.slots[i].set_pos(flxp, fly*pfy, flwp, flhp);
	pow.slots[i].set_rgb(Rt2,Gt2,Bt2);
	pfy = pfy + 0.0252;
}

function fade_transitions(ttype, var, ttime) 
{
	switch(ttype) 
	{
	case Transition.ToNewSelection:
	case Transition.ToNewList:
		
		local Wheelclick = fe.add_sound("objs/sys/clic.mp3");
		Wheelclick.playing=true;
		
		break;
	}
	return false;
}

fe.add_transition_callback("fade_transitions");

}

if(my_config["set_list_rows"] == "12")
{
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

	local pow = ShufflePow(12, "image", "objs/sys/arrow.png");

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
			
			local Wheelclick = fe.add_sound("objs/sys/clic.mp3");
			Wheelclick.playing=true;
			
			break;
		}
		return false;
	}

	fe.add_transition_callback("fade_transitions");
}