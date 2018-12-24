////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// 10/11/2016 updated by DGM for the RetroPie Facebook group 
// Updated and enhanced to now include many new features and options
//
// Updated 9/08/2016 by omegaman                                                                      
// Attract-Mode "Robospin" layout. Thanks to verion for cleaning cab skins and to malfacine's for glogos                             
// Notes: Lots of changes...  
////////////////////////////////////////////////////////////////////////////////////////////////////////   

class UserConfig {
</ label="--------  Main theme layout  --------", help="Show or hide additional images", order=1 /> uct1="select below";
   </ label="Select background image", help="Select theme background or flyer", options="default,default1,flyer", order=2 /> enable_bg="default";   
   </ label="Select cabinet image", help="Select a cab skin image", options="default,MK,MVC,pacman,retropie,tmnt,SNK,Capcom,Data East,advMAME,hacks,MAME4ALL,nintendo classics,sega classics,taito,top 100,williams,atari classics", order=3 /> enable_cab="default";
   </ label="Select listbox, wheel, vert_wheel", help="Select wheel type or listbox", options="listbox, wheel, wheel_left, vert_wheel, vert_wheel_left", order=4 /> enable_list_type="wheel";
   </ label="Select spinwheel art", help="The artwork to spin", options="marquee, wheel", order=5 /> orbit_art="wheel";
   </ label="Wheel transition time", help="Time in milliseconds for wheel spin.", order=6 /> transition_ms="35";  
   </ label="Wheel fade time", help="Time in milliseconds to fade the wheel.", options="Off,2500,5000,7500,10000,12500,15000,17500,20000,22500,25000,27500,30000", order=7 /> wheel_fade_ms="2500";
</ label="--------    Extra images     --------", help="Show or hide additional images", order=8 /> uct2="select below";
   </ label="Enable box art", help="Select box art", options="Yes,No", order=9 /> enable_gboxart="Yes"; 
   </ label="Enable cartridge art", help="Select cartridge art", options="Yes,No", order=10 /> enable_gcartart="Yes"; 
   </ label="Enable MFR game logos", help="Select game logos", options="Yes,No", order=11 /> enable_mlogos="Yes"; 
   </ label="Enable system logos", help="Select system logos", options="Yes,No", order=12 /> enable_slogos="Yes"; 
</ label="-------- Logo/Marquee images --------", help="Show or hide logo/marquee images", order=13 /> uct3="select below";
   </ label="Enable logos/marquees", help="Show logo or marquees", options="Yes,No", order=14 /> enable_logomarquee="Yes";
   </ label="Select logo or marquee", help="Select logo or marquees", options="logo, emulator, marquee", order=15 /> enable_marquee="logo";
   </ label="Enable lighted marquee effect", help="show lighted Marquee", options="Yes,No", order=16 /> enable_Lmarquee="No";
</ label="--------   Pointer images    --------", help="Change pointer image", order=17 /> uct4="select below";
   </ label="Select pointer", help="Select animated pointer", options="default,emulator,rocket,hand,none", order=18 /> enable_pointer="default"; 
</ label="--------    Game info box    --------", help="Show or hide game info box", order=19 /> uct5="select below";
   </ label="Enable game information", help="Show game information", options="Yes,No", order=20 /> enable_ginfo="Yes";
   </ label="Enable text frame", help="Show text frame", options="Yes,No", order=21 /> enable_frame="Yes"; 
</ label="--------    Miscellaneous    --------", help="Miscellaneous options", order=22 /> uct6="select below";
   </ label="Enble background overlay", help="Select overlay effect; options are masking, scanlines, aperture", options="mask,scanlines,aperture,none", order=23 /> enable_overlay="mask";
   </ label="Enable snap bloom shader effect", help="Bloom effect uses shader", options="Yes,No", order=24 /> enable_bloom="No";
   </ label="Enable crt shader effect", help="CRT effect uses shader", options="Yes,No", order=25 /> enable_crt="No";
   </ label="Enable monitor static effect", help="Show static effect when snap is null", options="Yes,No", order=26 /> enable_static="Yes";    
}  

local my_config = fe.get_config();
local flx = fe.layout.width;
local fly = fe.layout.height;
local flw = fe.layout.width;
local flh = fe.layout.height;

//for fading of the wheel
first_tick <- 0;
stop_fading <- true;
wheel_fade_ms <- 0;
try {	wheel_fade_ms = my_config["wheel_fade_ms"].tointeger(); } catch ( e ) { }

//fe.layout.font="Roboto";

// modules
fe.load_module("fade");
fe.load_module( "animate" );

// Background Art 
// This section will display the two different background art 
// based up on the layout option choice
if ( my_config["enable_bg"] == "default") 
{
local b_art = fe.add_image("backgrounds/default.png", 0, 0, flw, flh );
b_art.alpha=255;
}

if ( my_config["enable_bg"] == "default1") 
{
local b_art = fe.add_image("backgrounds/default1.png", 0, 0, flw, flh );
b_art.alpha=255;
}

if ( my_config["enable_bg"] == "flyer") 
{
local surface_flyer = fe.add_surface( 640, 480 );
local b_art = FadeArt( "flyer", 0, 0, 640, 480, surface_flyer );
b_art.trigger = Transition.EndNavigation;
b_art.preserve_aspect_ratio = false;
b_art.alpha=127;

//now position and rotate surface for flyer
surface_flyer.set_pos(flx*0.4, 0, flw*0.6, flh);
surface_flyer.rotation = 0;
}

//masking effect overlay for bg art

if ( my_config["enable_overlay"] == "mask" )
{
local overlay = fe.add_image( "mask.png", 0, 0, flw, flh );
overlay.preserve_aspect_ratio = false;
overlay.alpha = 200;
}

if ( my_config["enable_overlay"] == "scanlines" )
{
local overlay = fe.add_image( "scanlines.png", 0, 0, flw, flh );
overlay.preserve_aspect_ratio = false;
overlay.alpha = 200;
}

if ( my_config["enable_overlay"] == "aperture" )
{
local overlay = fe.add_image( "aperture.png", 0, 0, flw, flh );
overlay.preserve_aspect_ratio = false;
overlay.alpha = 200;
}

if ( my_config["enable_overlay"] == "none" )
{
local overlay = fe.add_image( "none.png", 0, 0, 0, 0 );
overlay.preserve_aspect_ratio = false;
overlay.alpha = 0;
}


/////////////////////
//Video
/////////////////////
local snap = FadeArt( "snap", 0, 0, flw, flh );
snap.trigger = Transition.EndNavigation;
snap.preserve_aspect_ratio = true;

// Cabinet image used for displaying the conosle and controller image
if ( my_config["enable_cab"] == "default" )
{
 local cab = fe.add_image( "cabinets/default.png", 0, 0, flw, flh );
}

if ( my_config["enable_cab"] == "MK" )
{
 local cab = fe.add_image( "cabinets/MK.png", 0, 0, flw, flh );
}

if ( my_config["enable_cab"] == "MVC" )
{
 local cab = fe.add_image( "cabinets/MVC.png", 0, 0, flw, flh );
}

if ( my_config["enable_cab"] == "pacman" )
{
 local cab = fe.add_image( "cabinets/pacman.png", 0, 0, flw, flh );
}

if ( my_config["enable_cab"] == "retropie" )
{
 local cab = fe.add_image( "cabinets/retropie.png", 0, 0, flw, flh );
}

if ( my_config["enable_cab"] == "tmnt" )
{
 local cab = fe.add_image( "cabinets/tmnt.png", 0, 0, flw, flh );
}

if ( my_config["enable_cab"] == "SNK" )
{
 local cab = fe.add_image( "cabinets/SNK.png", 0, 0, flw, flh );
}

if ( my_config["enable_cab"] == "Capcom" )
{
 local cab = fe.add_image( "cabinets/Capcom.png", 0, 0, flw, flh );
}

if ( my_config["enable_cab"] == "Data East" )
{
 local cab = fe.add_image( "cabinets/Data East.png", 0, 0, flw, flh );
}

if ( my_config["enable_cab"] == "advMAME" )
{
 local cab = fe.add_image( "cabinets/advMAME.png", 0, 0, flw, flh );
}

if ( my_config["enable_cab"] == "hacks" )
{
 local cab = fe.add_image( "cabinets/hacks.png", 0, 0, flw, flh );
}

if ( my_config["enable_cab"] == "MAME4ALL" )
{
 local cab = fe.add_image( "cabinets/MAME4ALL.png", 0, 0, flw, flh );
}

if ( my_config["enable_cab"] == "nintendo classics" )
{
 local cab = fe.add_image( "cabinets/nintendo classics.png", 0, 0, flw, flh );
}

if ( my_config["enable_cab"] == "sega classics" )
{
 local cab = fe.add_image( "cabinets/sega classics.png", 0, 0, flw, flh );
}

if ( my_config["enable_cab"] == "taito" )
{
 local cab = fe.add_image( "cabinets/taito.png", 0, 0, flw, flh );
}

if ( my_config["enable_cab"] == "top 100" )
{
 local cab = fe.add_image( "cabinets/top 100.png", 0, 0, flw, flh );
}

if ( my_config["enable_cab"] == "williams" )
{
 local cab = fe.add_image( "cabinets/williams.png", 0, 0, flw, flh );
}

if ( my_config["enable_cab"] == "atari classics" )
{
 local cab = fe.add_image( "cabinets/atari classics.png", 0, 0, flw, flh );
}


// Box art to dipslay, uses the emulator.cfg path for boxart image location
if ( my_config["enable_gboxart"] == "Yes" )
{
local boxart = fe.add_artwork("boxart", flx*0.06, fly*0.6 flw*0.1, flh*0.2 );
}

// Cartridge art to display, uses the emulator.cfg path for cartart for cartridge image location
if ( my_config["enable_gcartart"] == "Yes" )
{
local cartart = fe.add_artwork("cartart", flx*0.1, fly*0.68, flw*0.1, flh*0.1 );
}


// Adding in the SWF video files
if ( my_config["enable_gcartart"] == "Yes" )
{
//local swffile1 = fe.add_image("swfart/sonic1.swf", flx*0.3, fly*0.28, flw*0.2, flh*0.2 );
//local swffile2 = fe.add_image("swfart/sonic2.swf", flx*0.001, fly*0.001, flw*0.999, flh*0.999 );

}


// Clogo for adding system name artwork or diplay generic marquee
// remember to make both sections the same dimensions
// You can show or hide this entire image layer using the
// layout options.  Enable logo/marquee
if ( my_config["enable_logomarquee"] == "Yes" )
{

// Show the game marquee from the roms/xxx/marquee folder
// otherwise if not exist show default marquee.jpg
if ( my_config["enable_marquee"] == "marquee" )
{
local marquee = fe.add_artwork("marquee", flx*0.0937, fly*0.0575, flw*0.3283, flh*0.1192 );
 marquee.trigger = Transition.EndNavigation;
 marquee.skew_y = 0;
 marquee.skew_x = 0;
 marquee.pinch_x = 0;
 marquee.pinch_y = 0;
 marquee.rotation = 0;
   if ( my_config["enable_Lmarquee"] == "Yes" )
{
    local shader = fe.add_shader( Shader.Fragment "bloom_shader.frag" );
	shader.set_texture_param("bgl_RenderedTexture"); 
	marquee.shader = shader;
}

}
// Show the single logo in the clogos folder default.png
if ( my_config["enable_marquee"] == "logo" )
{
 local clogos = fe.add_image("clogos/default.png", flx*0.03, fly*0.03, flw*0.2, flh*0.1 );
 clogos.trigger = Transition.EndNavigation;
 clogos.skew_y = 0;
 clogos.skew_x = 0;
 clogos.pinch_x = 0;
 clogos.pinch_y = 0;
 clogos.rotation = 0;
}

// Show the emulator marquee in the clogos folder
if ( my_config["enable_marquee"] == "emulator" )
{
 local clogos = fe.add_image("clogos/[Emulator]", flx*0.0937, fly*0.0575, flw*0.3283, flh*0.1192 );
 clogos.trigger = Transition.EndNavigation;
 clogos.skew_y = 0;
 clogos.skew_x = 0;
 clogos.pinch_x = 0;
 clogos.pinch_y = 0;
 clogos.rotation = 0;
}

}

// The following section sets up what type and wheel and displays the users choice
//listbox
if ( my_config["enable_list_type"] == "listbox" )
{
local sort_listbox = fe.add_listbox( 176, 96, 45, 202 );
sort_listbox.rows = 13;
sort_listbox.charsize = 10;
sort_listbox.set_rgb( 0, 0, 0 );
sort_listbox.format_string = "[SortValue]";
sort_listbox.bg_alpha=255;
sort_listbox.visible = false;

local listbox = fe.add_listbox(flx*0.56, fly*0.12, flw*0.41, flh*0.8 );
listbox.rows = 13;
listbox.charsize = 18;
listbox.set_rgb( 255, 255, 255 );
listbox.bg_alpha = 90;
listbox.align = Align.Left;
listbox.selbg_alpha = 90;
listbox.sel_red = 255;
listbox.sel_green = 255;
listbox.sel_blue = 0;
}

//This enables vertical art instead of default wheel
if ( my_config["enable_list_type"] == "vert_wheel" )
{
fe.load_module( "conveyor" );
local wheel_x = [ flx*0.71, flx*0.71, flx*0.71, flx*0.71, flx*0.71, flx*0.71, flx*0.68, flx*0.71, flx*0.71, flx*0.71, flx*0.71, flx*0.71, ]; 
local wheel_y = [ -fly*0.22, -fly*0.105, fly*0.0, fly*0.105, fly*0.215, fly*0.325, fly*0.436, fly*0.61, fly*0.72 fly*0.83, fly*0.935, fly*0.99, ];
local wheel_w = [ flw*0.18, flw*0.18, flw*0.18, flw*0.18, flw*0.18, flw*0.18, flw*0.24, flw*0.18, flw*0.18, flw*0.18, flw*0.18, flw*0.18, ];
local wheel_a = [  80,  80,  80,  80,  80,  80, 255,  80,  80,  80,  80,  80, ];
local wheel_h = [  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11, flh*0.168,  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11, ];
local wheel_r = [  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ];
local num_arts = 8;

class WheelEntry extends ConveyorSlot
{
	constructor()
	{
		base.constructor( ::fe.add_artwork( my_config["orbit_art"] ) );
	}

	function on_progress( progress, var )
	{
	  local p = progress / 0.1;
		local slot = p.tointeger();
		p -= slot;
		
		slot++;

		if ( slot < 0 ) slot=0;
		if ( slot >=10 ) slot=10;

		m_obj.x = wheel_x[slot] + p * ( wheel_x[slot+1] - wheel_x[slot] );
		m_obj.y = wheel_y[slot] + p * ( wheel_y[slot+1] - wheel_y[slot] );
		m_obj.width = wheel_w[slot] + p * ( wheel_w[slot+1] - wheel_w[slot] );
		m_obj.height = wheel_h[slot] + p * ( wheel_h[slot+1] - wheel_h[slot] );
		m_obj.rotation = wheel_r[slot] + p * ( wheel_r[slot+1] - wheel_r[slot] );
		m_obj.alpha = wheel_a[slot] + p * ( wheel_a[slot+1] - wheel_a[slot] );
	}
};

local wheel_entries = [];
for ( local i=0; i<num_arts/2; i++ )
	wheel_entries.push( WheelEntry() );

local remaining = num_arts - wheel_entries.len();

// we do it this way so that the last wheelentry created is the middle one showing the current
// selection (putting it at the top of the draw order)
for ( local i=0; i<remaining; i++ )
	wheel_entries.insert( num_arts/2, WheelEntry() );

conveyor <- Conveyor();
conveyor.set_slots( wheel_entries );
conveyor.transition_ms = 50;
try { conveyor.transition_ms = my_config["transition_ms"].tointeger(); } catch ( e ) { }
}

//This enables vertical art on left side instead of default wheel
if ( my_config["enable_list_type"] == "vert_wheel_left" )
{
fe.load_module( "conveyor" );
local wheel_x = [ flx*0, flx*0, flx*0, flx*0, flx*0, flx*0, flx*0, flx*0, flx*0, flx*0, flx*0, flx*0, ]; 
local wheel_y = [ -fly*0.22, -fly*0.105, fly*0.0, fly*0.105, fly*0.215, fly*0.325, fly*0.436, fly*0.61, fly*0.72 fly*0.83, fly*0.935, fly*0.99, ];
local wheel_w = [ flw*0.18, flw*0.18, flw*0.18, flw*0.18, flw*0.18, flw*0.18, flw*0.24, flw*0.18, flw*0.18, flw*0.18, flw*0.18, flw*0.18, ];
local wheel_a = [  80,  80,  80,  80,  80,  80, 255,  80,  80,  80,  80,  80, ];
local wheel_h = [  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11, flh*0.168,  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11, ];
local wheel_r = [  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ];
local num_arts = 8;

class WheelEntry extends ConveyorSlot
{
	constructor()
	{
		base.constructor( ::fe.add_artwork( my_config["orbit_art"] ) );
	}

	function on_progress( progress, var )
	{
	  local p = progress / 0.1;
		local slot = p.tointeger();
		p -= slot;
		
		slot++;

		if ( slot < 0 ) slot=0;
		if ( slot >=10 ) slot=10;

		m_obj.x = wheel_x[slot] + p * ( wheel_x[slot+1] - wheel_x[slot] );
		m_obj.y = wheel_y[slot] + p * ( wheel_y[slot+1] - wheel_y[slot] );
		m_obj.width = wheel_w[slot] + p * ( wheel_w[slot+1] - wheel_w[slot] );
		m_obj.height = wheel_h[slot] + p * ( wheel_h[slot+1] - wheel_h[slot] );
		m_obj.rotation = wheel_r[slot] + p * ( wheel_r[slot+1] - wheel_r[slot] );
		m_obj.alpha = wheel_a[slot] + p * ( wheel_a[slot+1] - wheel_a[slot] );
	}
};

local wheel_entries = [];
for ( local i=0; i<num_arts/2; i++ )
	wheel_entries.push( WheelEntry() );

local remaining = num_arts - wheel_entries.len();

// we do it this way so that the last wheelentry created is the middle one showing the current
// selection (putting it at the top of the draw order)
for ( local i=0; i<remaining; i++ )
	wheel_entries.insert( num_arts/2, WheelEntry() );

conveyor <- Conveyor();
conveyor.set_slots( wheel_entries );
conveyor.transition_ms = 50;
try { conveyor.transition_ms = my_config["transition_ms"].tointeger(); } catch ( e ) { }
}
 
 
if ( my_config["enable_list_type"] == "wheel" )
{
fe.load_module( "conveyor" );
local wheel_x = [ flx*0.80, flx*0.795, flx*0.756, flx*0.725, flx*0.70, flx*0.68, flx*0.64, flx*0.68, flx*0.70, flx*0.725, flx*0.756, flx*0.76, ]; 
local wheel_y = [ -fly*0.22, -fly*0.105, fly*0.0, fly*0.105, fly*0.215, fly*0.325, fly*0.436, fly*0.61, fly*0.72 fly*0.83, fly*0.935, fly*0.99, ];
local wheel_w = [ flw*0.18, flw*0.18, flw*0.18, flw*0.18, flw*0.18, flw*0.18, flw*0.24, flw*0.18, flw*0.18, flw*0.18, flw*0.18, flw*0.18, ];
local wheel_a = [  80,  80,  80,  80,  80,  80, 255,  80,  80,  80,  80,  80, ];
local wheel_h = [  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11, flh*0.17,  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11, ];
local wheel_r = [  30,  25,  20,  15,  10,   5,   0, -10, -15, -20, -25, -30, ];
local num_arts = 8;

class WheelEntry extends ConveyorSlot
{
	constructor()
	{
		base.constructor( ::fe.add_artwork( my_config["orbit_art"] ) );
	}

	function on_progress( progress, var )
	{
		local p = progress / 0.1;
		local slot = p.tointeger();
		p -= slot;
		
		slot++;

		if ( slot < 0 ) slot=0;
		if ( slot >=10 ) slot=10;

		m_obj.x = wheel_x[slot] + p * ( wheel_x[slot+1] - wheel_x[slot] );
		m_obj.y = wheel_y[slot] + p * ( wheel_y[slot+1] - wheel_y[slot] );
		m_obj.width = wheel_w[slot] + p * ( wheel_w[slot+1] - wheel_w[slot] );
		m_obj.height = wheel_h[slot] + p * ( wheel_h[slot+1] - wheel_h[slot] );
		m_obj.rotation = wheel_r[slot] + p * ( wheel_r[slot+1] - wheel_r[slot] );
		m_obj.alpha = wheel_a[slot] + p * ( wheel_a[slot+1] - wheel_a[slot] );
	}
};

local wheel_entries = [];
for ( local i=0; i<num_arts/2; i++ )
	wheel_entries.push( WheelEntry() );

local remaining = num_arts - wheel_entries.len();

// we do it this way so that the last wheelentry created is the middle one showing the current
// selection (putting it at the top of the draw order)
for ( local i=0; i<remaining; i++ )
wheel_entries.insert( num_arts/2, WheelEntry() );

conveyor <- Conveyor();
conveyor.set_slots( wheel_entries );
conveyor.transition_ms = 50;
try { conveyor.transition_ms = my_config["transition_ms"].tointeger(); } catch ( e ) { }
}

if ( my_config["enable_list_type"] == "wheel_left" )
{
fe.load_module( "conveyor" );
local wheel_x = [ flx*0.010, flx*0.050, flx*0.075 , flx*0.040, flx*0.033, flx*0.011, flx*0.005, flx*0.009, flx*0.005, flx*0.045, flx*0.050, flx*0.008, ]; 
local wheel_y = [ -fly*0.220, -fly*0.105, -fly*0.010, fly*0.080, fly*0.200, fly*0.300, fly*0.436, fly*0.610, fly*0.720 fly*0.830, fly*0.935, fly*0.990, ];
local wheel_w = [ flw*0.190, flw*0.190, flw*0.190, flw*0.190, flw*0.190, flw*0.190, flw*0.190, flw*0.190, flw*0.190, flw*0.190, flw*0.190, flw*0.190, ];
local wheel_a = [  80,  80,  40,  70,  120,  180, 255,  180,  180,  120,  30,  80, ];
local wheel_h = [  flh*0.110,  flh*0.130,  flh*0.130,  flh*0.130,  flh*0.130,  flh*0.130, flh*0.168,  flh*0.130,  flh*0.130,  flh*0.130,  flh*0.130,  flh*0.130, ];
local wheel_r = [  0, 0, 22, 16, 13, 10, 0, -10, -12, -17, -22, -10, ];
local num_arts = 8;

class WheelEntry extends ConveyorSlot
{
	constructor()
	{
		base.constructor( ::fe.add_artwork( my_config["orbit_art"] ) );
	}

	function on_progress( progress, var )
	{
		local p = progress / 0.1;
		local slot = p.tointeger();
		p -= slot;
		
		slot++;

		if ( slot < 0 ) slot=0;
		if ( slot >=10 ) slot=10;

		m_obj.x = wheel_x[slot] + p * ( wheel_x[slot+1] - wheel_x[slot] );
		m_obj.y = wheel_y[slot] + p * ( wheel_y[slot+1] - wheel_y[slot] );
		m_obj.width = wheel_w[slot] + p * ( wheel_w[slot+1] - wheel_w[slot] );
		m_obj.height = wheel_h[slot] + p * ( wheel_h[slot+1] - wheel_h[slot] );
		m_obj.rotation = wheel_r[slot] + p * ( wheel_r[slot+1] - wheel_r[slot] );
		m_obj.alpha = wheel_a[slot] + p * ( wheel_a[slot+1] - wheel_a[slot] );
	}
};

local wheel_entries = [];
for ( local i=0; i<num_arts/2; i++ )
	wheel_entries.push( WheelEntry() );

local remaining = num_arts - wheel_entries.len();

// we do it this way so that the last wheelentry created is the middle one showing the current
// selection (putting it at the top of the draw order)
for ( local i=0; i<remaining; i++ )
wheel_entries.insert( num_arts/2, WheelEntry() );

conveyor <- Conveyor();
conveyor.set_slots( wheel_entries );
conveyor.transition_ms = 50;
try { conveyor.transition_ms = my_config["transition_ms"].tointeger(); } catch ( e ) { }
}

// The following sets up which pointer to show on the wheel
//property animation - wheel pointers
if ( my_config["enable_pointer"] == "rocket") 
{
point <- fe.add_image("pointers/pointer.png", flx*0.88, fly*0.34, flw*0.2, flh*0.35);

local alpha_cfg = {
    when = Transition.ToNewSelection,
    property = "alpha",
    start = 110,
    end = 255,
    time = 300
}
animation.add( PropertyAnimation( point, alpha_cfg ) );

local movey_cfg = {
    when = Transition.ToNewSelection,
    property = "y",
    start = point.y,
    end = point.y,
    time = 200
}
animation.add( PropertyAnimation( point, movey_cfg ) );

local movex_cfg = {
    when = Transition.ToNewSelection,
    property = "x",
    start = flx*0.83,
    end = point.x,
    time = 200	
}	
animation.add( PropertyAnimation( point, movex_cfg ) );
}
if ( my_config["enable_pointer"] == "emulator") 
{
point <- fe.add_image("pointers/[Emulator]", flx*0.88, fly*0.34, flw*0.2, flh*0.35);

local alpha_cfg = {
    when = Transition.ToNewSelection,
    property = "alpha",
    start = 110,
    end = 255,
    time = 300
}
animation.add( PropertyAnimation( point, alpha_cfg ) );

local movey_cfg = {
    when = Transition.ToNewSelection,
    property = "y",
    start = point.y,
    end = point.y,
    time = 200
}
animation.add( PropertyAnimation( point, movey_cfg ) );

local movex_cfg = {
    when = Transition.ToNewSelection,
    property = "x",
    start = flx*0.83,
    end = point.x,
    time = 200	
}	
animation.add( PropertyAnimation( point, movex_cfg ) );
}
if ( my_config["enable_pointer"] == "default") 
{
point <- fe.add_image("pointers/default.png", flx*0.88, fly*0.34, flw*0.2, flh*0.35);

local alpha_cfg = {
    when = Transition.ToNewSelection,
    property = "alpha",
    start = 110,
    end = 255,
    time = 300
}
animation.add( PropertyAnimation( point, alpha_cfg ) );

local movey_cfg = {
    when = Transition.ToNewSelection,
    property = "y",
    start = point.y,
    end = point.y,
    time = 200
}
animation.add( PropertyAnimation( point, movey_cfg ) );

local movex_cfg = {
    when = Transition.ToNewSelection,
    property = "x",
    start = flx*0.83,
    end = point.x,
    time = 200	
}	
animation.add( PropertyAnimation( point, movex_cfg ) );
}

if ( my_config["enable_pointer"] == "hand") 
{
 point <- fe.add_image("pointers/pointer2.png", flx*0.88, fly*0.34, flw*0.2, flh*0.35);
 local alpha_cfg = {
    when = Transition.ToNewSelection,
    property = "alpha",
    start = 110,
    end = 255,
    time = 300
}
animation.add( PropertyAnimation( point, alpha_cfg ) );

local movey_cfg = {
    when = Transition.ToNewSelection,
    property = "y",
    start = point.y,
    end = point.y,
    time = 200
}
animation.add( PropertyAnimation( point, movey_cfg ) );

local movex_cfg = {
    when = Transition.ToNewSelection,
    property = "x",
    start = flx*0.83,
    end = point.x,
    time = 200	
}	
animation.add( PropertyAnimation( point, movex_cfg ) );
}

if ( my_config["enable_pointer"] == "none") 
{
  point <- fe.add_image( "", 0, 0, 0, 0 );
}

// Game information text box at bottom of screen
//add frame to make text standout 
if ( my_config["enable_frame"] == "Yes" )
{
 local bgBottom = fe.add_image ("black.png",flw*0, fly*0.963, flw, flh*0.04);
 bgBottom.alpha = 150;
} 
// Game info text.
if ( my_config["enable_ginfo"] == "Yes" )
{
 local titleText = fe.add_text( "[DisplayName] > [FilterName] > [Title]", flw*0, fly*0.97, flw, flh*0.022  );
 titleText.alpha = 200;
 titleText.align = Align.Left;
 }
 
//Wheel fading
if ( wheel_fade_ms > 0 && my_config["enable_pointer"] != "none" && ( my_config["enable_list_type"] == "wheel" || my_config["enable_list_type"] == "vert_wheel" || my_config["enable_list_type"] == "vert_wheel_left" || my_config["enable_list_type"] == "wheel_left") )
{
	function wheel_alpha( ttime )
	{
		if (first_tick == -1)
			stop_fading = false;

		if ( !stop_fading )
		{
			local elapsed = 0;
			if (first_tick > 0)
				elapsed = ttime - first_tick;

			local count = conveyor.m_objs.len();

			for (local i=0; i < count; i++)
			{
				if ( elapsed > wheel_fade_ms)
					conveyor.m_objs[i].alpha = 0;
				else
					//uses hardcoded default alpha values does not use wheel_a
					//4 = middle one -> full alpha others use 80
					if (i == 4)
						conveyor.m_objs[i].alpha = (255 * (wheel_fade_ms - elapsed)) / wheel_fade_ms;
					else
						conveyor.m_objs[i].alpha = (80 * (wheel_fade_ms - elapsed)) / wheel_fade_ms;
			}

			if ( elapsed > wheel_fade_ms)
			{
				//So we don't keep doing the loop above when all values have 0 alpha
				stop_fading = true;
				point.alpha = 0;
			}
			else
				//hardcoded default pointer with full alpha alpha
				point.alpha = (255 * (wheel_fade_ms - elapsed)) / wheel_fade_ms;

		  if (first_tick == -1)
				first_tick = ttime;
		}
	}
	fe.add_ticks_callback( "wheel_alpha" );
}
