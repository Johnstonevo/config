//
// ioflat menu.
// Theme for Attract-Mode frontend by iOtero.
// 09/2018.
// Designed for The Main Menu.
//
// Inspired on each and every one of the themes for frontends that i have found on the internet.
// Thanks to its creators, because of them i have obtained the code and/or the ideas to make this theme.
//

class UserConfig
{
	</ 	label			= "Set Art",
		help			= "Select the art that will be displayed in the selector: fanart, flyer, marquee, snap or wheel.",
		options			= "fanart,flyer,marquee,snap,wheel",
		order			= 1
	/> 	set_art			= "snap";

	</ 	label			= "Set Color Scheme",
		help			= "Select the scheme color: aqua, blue, brown, cream, dark, granite, green, grey, orange, pink, purple, red, wengue, white, yellow, UCLA or random.",
		options			= "aqua,blue,brown,cream,dark,granite,green,grey,orange,pink,purple,red,wengue,white,yellow,UCLA,random",
		order			= 2
	/> 	set_rgb_scheme	= "blue";

    </ 	label			= "Clock",
		help			= "Shows clock and date, in Spanish or USA format.",
		options			= "spanish,usa",
		order			= 3
	/>	set_clock		= "spanish";
}

local my_config = fe.get_config();

fe.do_nut("mds/module-master.nut");

// Dimensions
local flx = fe.layout.width;
local fly = fe.layout.height;
local flw = fe.layout.width;
local flh = fe.layout.height;

// Carriers
local slf = 5;
local cry = 0;
local crw = 0;
local crh = 0;
local crx = 0;
local tilePadding = 8;
local wcw = (flw/slf)*1.875 - tilePadding;
local wch = (flh/slf)*1.406 - tilePadding;
local fny = fly*0.16;
local fnw = flw*0.25;
local fnh = flh*0.01;
local fnx = (flw-fnw)/2;

// Clock
local date_and_hour = my_config["set_clock"];

// Art
local my_art = my_config["set_art"];

// Fonts
local font_bold	 = "Antonio-Bold";
local font_reglr = "Antonio-Regular";
local font_light = "Antonio-Light";
local font_over = "Mohave-Light";

// Fonts sizes
local font_title_size = flh*0.05925;
local font_data_size  = flh*0.04166;
local font_clock_size = flh*0.03125;
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

// Snap
local snap = fe.add_artwork("snap", 0, 0, flw, flh);
snap.trigger = Transition.ToNewSelection;
snap.preserve_aspect_ratio = false;

// Backgrounds
local back = fe.add_image("objs/white_point.png", 0, 0, flw, flh);
back.set_rgb(Rcl,Gcl,Bcl);
back.alpha = 200;

local bsup = fe.add_image("objs/white_point.png", 0, 0, flw, wch*0.75);
bsup.set_rgb(Ros,Gos,Bos);

local binf = fe.add_image("objs/white_point.png", 0, fly-wch*0.75, flw, wch*0.75);
binf.set_rgb(Ros,Gos,Bos);

// System
local title = fe.add_text("Menú Principal", flx*0, fly*0.001, flw, flh*0.01);
title.font = font_bold;
title.charsize = font_title_size; 
title.align = Align.TopCentre;
title.set_rgb(Rt2,Gt2,Bt2);

// Title
local title = fe.add_text("[Title]", flx*0, fly*0.10, flw, flh*0.01);
title.font = font_bold;
title.charsize = font_title_size;
title.align = Align.TopCentre;
title.set_rgb(Rt1,Gt1,Bt1);

// Clock
local my_clock = fe.add_text("", flx*0.01, fly*0.10, flw*0.15,  flh*0.01);
my_clock.font = font_light;
my_clock.charsize = font_clock_size;
my_clock.align = Align.TopCentre;
my_clock.set_rgb(Rt2,Gt2,Bt2);

// Date
local my_date = fe.add_text("", flx*0.01, fly*0.14, flw*0.15,  flh*0.01);
my_date.font = font_light;
my_date.charsize = font_clock_size;
my_date.align = Align.TopCentre;
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

// [ListEntry]/[ListSize]
local list = fe.add_text("[ListEntry]/[ListSize]", flx*0.85, fly*0.13, flw*0.15, flh*0.01);
list.font = font_reglr;
list.charsize = font_data_size;
list.align = Align.TopCentre;
list.set_rgb(Rt1,Gt1,Bt1);

// Overview
local my_overw = fe.add_text("[Overview]", 0, fly-(wch*0.75)+font_over_size, flw, wch*0.75);
my_overw.font = font_over;
my_overw.charsize = font_over_size;
my_overw.align = Align.TopLeft;
my_overw.word_wrap = true;
my_overw.set_rgb(Rt1,Gt1,Bt1);

// Carrier Snaps
crx = flx*0;
crh = wch;
cry = (fly-wch)/2;
crw = flw;

class CarrierSnaps
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
		tilesTotal = slf + tilesOffscreen * 2;

		tileWidth = crw/slf;
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

			tilesTablePos.push(tileHeight * i + (tilePadding / 2));
			obj.set_pos(0, tilePadding, tileWidth - tilePadding * 2, tileHeight - tilePadding * 2);
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

local crrr = CarrierSnaps();

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
