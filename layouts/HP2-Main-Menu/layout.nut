////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// HyperPie 2 theme by Carl
// https://www.facebook.com/groups/1158678304181964/
//
// This theme is based on Oomeks Silky theme.
//  
////////////////////////////////////////////////////////////////////////////////////////////////////////   

class UserConfig {
	</ label="HYPERPIE2 MAIN MENU OPTIONS", help="Brought to you by Project HyperPie", order=1 /> uct1=" ";
   	</ label="Startup Tutorial", help="Enable Clock", options="On,Off", order=2 /> enable_tutorial="On";
	</ label=" ", help="Brought to you by Project HyperPie", order=2 /> uct3=" ";

	</ label="GENERAL SETTINGS", help="Brought to you by Project HyperPie", order=3 /> uct4=" ";
	</ label="Background Image", help="Select theme background", options="Custom Background Color, Custom JPG, Custom PNG, Flyer, City Lights, Pixel Skyline,Neon Logos White, Neon Logos Cyan, Neon Logos Blue,  Neon Logos Light Blue, Neon Logos Pink,Grid Logos Dark Blue, Grid Logos Dark Grey, Grid Logos Green, Grid Logos Light Blue, Grid Logos Light Grey, Grid Logos Mid Blue, Grid Logos Mid Blue, Grid Logos Orange, Grid Logos Pink, Grid Logos Purple, Grid Logos Red, Grid Logos Turquoise, Grid Logos Yellow, Logos Dark Blue, Logos Dark Grey, Logos Green, Logos Light Blue, Logos Light Grey, Logos Light Turquoise, Logos Mid Blue, Logos Orange, Logos Pink, Logos Purple, Logos Red, Logos Turquoise, Logos Yellow, Mono Logos Blue, Mono Logos Black, None,Retro Wave 1,Retro Wave 2,Retro Wave 3,Retro Wave 4,Retro Wave 5,Retro Wave 6,Retro Wave 7,Retro Wave 8,Retro Wave 9,Retro Wave 10,Retro Wave 11,Retro Wave 12,Retro Wave 13", order=4 /> enable_bg="Flyer";	
	</ label="Background Scroll", help="Background Scroll (Not for Flyer)", options="Yes,No", order=5 /> enable_bg_scroll="No"; 
	</ label="Border Overlay", help="Enable Border Overlay", options="Yes,No", order=5 /> enable_border="Yes"; 
	</ label="Background Image Scanline Overlay", help="Enable Background Image Scanline Overlay", options="Light, Medium, Dark, Diagonal, No", order=6 /> enable_backgroundoverlay="No";
    </ label="Custom Video Music", help="Disable Video Sound", options="Yes,No", order=6 /> enable_backgroundmusic="No";
	</ label="Monitor Aspect Ratio", help="Select Monitor Aspect Ratio", options="16x9,4x3", order=6 /> aspectratio="16x9";
	</ label="Hardware Selection", help="Select Your Hardware", options="RPi,PC", order=6 /> hardware="RPi";	
	</ label="Frame Around Video", help="Select frame option", options="Yes, No", order=7 /> enable_frame="Yes";
	</ label="Enable Flyer Art", help="Enable Flyer Art", options="Yes,No", order=8 /> enable_bigart3="Yes";
   	</ label="Clock", help="Enable Clock", options="Yes,No", order=8 /> enable_clock="No";
	</ label="Left Wheel Image", help="Fade Out Left Wheel Image", options="Yes, Fade Out,No", order=8 /> LeftWheel="Yes" ;
	</ label="Art Load Delay", help="Delay Loading of snaps and flyer to optimize performance", options="On,Off", order=8 /> art_delay="On" ;
	</ label="View Name Popup", help="Disable or enable view name popup", options="On,Off", order=8 /> ViewNamePopup="On";
	</ label="Sound Effects", help="Disable or enable sound effects", options="On,Off", order=8 /> soundeffects="Off";
//	</ label="Fade to Game", help="Disable or enable fade to game effects", options="On,Off", order=8 /> fadetogame="Off";
	</ label="Fade to Fullscreen Video", help="Disable or enable fade to fullscreen video", options="Off, Videotheme, Snap", order=8 /> Videotheme="Off";
	</ label="Vintage Effect over Screen", help="Disable or enable vintage effect", options="On,Off", order=8 /> vintage_screen="Off";	
	</ label="Vintage Effect over Flyer", help="Disable or enable vintage effect", options="On,Off", order=8 /> vintage_flyer="Off";		
	</ label=" ", help="Brought to you by Project HyperPie", order=9 /> uct5=" ";
	
	</ label="WHEEL OPTIONS", help="Brought to you by Project HyperPie", order=10 /> uct6=" ";  
	</ label="Wheel Layout", help="Select wheel type", options="List Box,Horizontal,Horizontal Animated,Vertical Wheel", order=11 /> enable_list_type="List Box";
	</ label="Wheel Art Folder", help="The artwork to spin", options="wheel, marquee, flyer, fanart, cartart, boxart", order=12 /> orbit_art="wheel";
	</ label="Wheel Transition Time", help="Time in milliseconds for wheel spin.", order=13 /> transition_ms="35";  
	</ label="Wheel Fade Time", help="Time in milliseconds to fade the wheel.", options="Off,2500,5000,7500,10000,12500,15000,17500,20000,22500,25000,27500,30000", order=14 /> wheel_fade_ms="2500";
   	</ label="Game List Rows", help="How many games to display on the List Box", options="11,13,15,17,19,21,23,25,27,29,31", order=15 /> rows="19"
	</ label="List Box and Wheel Background Hide", help="Time in seconds after which game list hides\n0 disables auto hide", options="Off,2500,5000,7500,10000,12500,15000,17500,20000,22500,25000,27500,30000", order=16 /> glautohide="2500";	
	</ label="List Box Opacity", help="Set List Box Opacity. 255 is equal to no opacity", options="100,200,255", order=16 /> ListBoxOpacity="255";			
	</ label=" ", help="Brought to you by Project HyperPie", order=9 /> uct7=" ";

	</ label="HARDWARE INFO OPTIONS", help="Show system information in layout", order=18 /> uct8=" ";
	</ label="System Info", help="Show System Info - CPU, RAM etc.", options="Yes,No", order=19 /> showSysInfo="No";
	</ label=" ", help="Brought to you by Project HyperPie", order=20 /> uct8=" ";
   	
	</ label="GAME/SYSTEM INFO", help="Show or hide system name", order=24 /> uct9=" ";
    </ label="Title", help="Enable Title", options="Yes, No", order=25 /> enable_title="Yes";  
	</ label="Fade Title", help="Fade out title", options="Yes, No", order=26 /> fadeWheelTitle="No";
    </ label="Game Description", help="Select Game Description Text Mode", options="Right,Popup,Off", order=27 /> select_description="Off";
	</ label=" ", help="Brought to you by Project HyperPie", order=28 /> uct10=" ";

	</ label="COLOUR OPTIONS", help="Brought to you by Project HyperPie", order=29 /> uct11=" ";		 
	</ label="Custom Background Color as R,G,B", help="( 0-255 values allowed )\nSets the colour of accent elements.\nLeave blank if you want the colour from the randomized to be stored permanently.", option="0", order=30 /> backrgb="150,0,0";	
	</ label="Border Overlay Color as R,G,B", help="( 0-255 values allowed )\nSets the colour of background elements.\nLeave blank if you want the colour from the randomized to be stored permanently.", option="0", order=30 /> bgrgb="0,0,0";
	</ label="List Box Background Color as R,G,B", help="( 0-255 values allowed )\nSets the colour of background elements.\nLeave blank if you want the colour from the randomized to be stored permanently.", option="0", order=31 /> lbgrgb="0,0,30";
	</ label="Video Frame Color as R,G,B", help="( 0-255 values allowed )\nSets the colour of the frame.\nLeave blank if you want the colour from the randomized to be stored permanently.", option="0", order=32 /> frrgb="250,250,250";
	</ label="Category text color as R,G,B", help="( 0-255 values allowed )\nSets the colour of accent elements.\nLeave blank if you want the colour from the randomized to be stored permanently.", option="0", order=33 /> selrgb="255,255,255";
	</ label="Title color as R,G,B", help="( 0-255 values allowed )\nSets the colour of accent elements.\nLeave blank if you want the colour from the randomized to be stored permanently.", option="0", order=34 /> titrgb="255,255,255";
	</ label="Game Selection Bar Color as R,G,B", help="( 0-255 values allowed )\nSets the colour of accent elements.\nLeave blank if you want the colour from the randomized to be stored permanently.", option="0", order=35 /> gslrgb="0,102,102";
	</ label="Year and Manufacturer as R,G,B", help="( 0-255 values allowed )\nSets the colour of accent elements.\nLeave blank if you want the colour from the randomized to be stored permanently.", option="0", order=36 /> pldrgb="254,255,255";
	</ label=" ", help="Brought to you by Project HyperPie", order=37 /> uct15=" ";
	
	</ label="VIDEO OPTIONS", help="Brought to you by Project HyperPie", order=38 /> uct16=" ";  
	</ label="Select Video Mode", help="Select Video Mode and Positon, Window or Off", options="Full Screen,Off,Center, Fanart", order=39 /> videomode="Center";   
	</ label="Preserve Video Aspect Ratio", help="Preserve Video Aspect Ratio", options="Yes,No", order=40 /> Preserve_Aspect_Ratio="Yes";
	</ label="Enble Scanlines", help="Show scanline effect", options="None,Light,Medium,Dark, RGB Effect", order=41 /> enable_scanline="None";
	</ label=" ", help="Brought to you by Project HyperPie", order=42 /> uct17=" ";
   
	</ label="ANIMATED WHEEL EFFECTS", help="Show or hide additional images", order=43 /> uct18=" ";
	</ label="Wheel Art Fade on Selection", help="Enable Wheel Art Fade on Selection", options="Yes,No", order=44 /> enable_wheelartfade="No";
	</ label="Wheel Art Fade on Load", help="Enable Wheel Art Fade on Load", options="Yes,No", order=45 /> enable_wheelartfadeonload="No"; 
	</ label="Wheel Art Scale on Selection", help="Disable Wheel Art Scale on Load", options="Yes,No", order=46 /> enable_wheelartscale="No"; 
	</ label="Wheel Art Scale on Load", help="Disable Big Art Scale on Load", options="Yes,No", order=47 /> enable_wheelartscaleonload="No"; 
	</ label="Wheel Art Rotate on Selection", help="Enable Wheel Art Rotate on Selection", options="Yes,No", order=48 /> enable_wheelartrotate="No";
	</ label="Wheel Art Rotate on Load", help="Enable Wheel Art Rotate on Load", options="Yes,No", order=49 /> enable_wheelartrotateonload="No";	 
	</ label="Wheel Art Fly-in on Selection", help="Enable Wheel Art Fly-in on Selection", options="Yes,No", order=50 /> enable_wheelartflyin="No";
	</ label=" ", help="Brought to you by Project HyperPie", order=51 /> uct19=" ";

}  



// Check if the AM version supporting .nomargin property is running
local am_version_check = fe.add_text("", 0, 0, 0, 0)
try{ am_version_check.nomargin = true }catch(e){	while (!fe.overlay.splash_message( "You are running an older version of Attract Mode.\nPlease update to the latest nightly build.")){} return }
am_version_check.visible = false

// modules
fe.load_module("fade");
fe.load_module( "animate");
fe.load_module( "pan-and-scan-hp" );
fe.do_nut("nuts/ryb2rgb.nut")
fe.do_nut("nuts/animate.nut")
fe.do_nut("nuts/genre.nut")

fe.layout.font="BebasNeueRegular.otf";

local my_config = fe.get_config();
local flx = fe.layout.width;
local fly = fe.layout.height;
local flw = fe.layout.width;
local flh = fe.layout.height;

local layout_width = fe.layout.width
local layout_height = fe.layout.height


local glr = my_config["rows"].tointeger()
local bth = floor( flh * 160.0 / 1080.0 )
local bbh = floor( flh * 160.0 / 1080.0 )
local bbm = ceil( bbh * 0.2 )
local lbw = floor( flh * 540.0 / 1080.0 )
local flyerH = flh - bth - bbh
local flyerW = lbw
local update_artwork = false
local update_counter = 0
local ListBoxAlpha = my_config["ListBoxOpacity"].tointeger();

local cr_en = false
local crw = 0

function irand(max) {
	local roll = (1.0 * rand() / RAND_MAX) * (max + 1)
	return roll.tointeger()
}

local bgRYB = [irand(255), irand(255), irand(255)]
local lbgRYB = [255 - bgRYB[0], 255 - bgRYB[1], 255 - bgRYB[2]]
local selRYB = [255 - bgRYB[0], 255 - bgRYB[1], 255 - bgRYB[2]]
local titRYB = [255 - bgRYB[0], 255 - bgRYB[1], 255 - bgRYB[2]]
local gslRYB = [255 - bgRYB[0], 255 - bgRYB[1], 255 - bgRYB[2]]
local pldRYB = [255 - bgRYB[0], 255 - bgRYB[1], 255 - bgRYB[2]]
local frRYB = [255 - bgRYB[0], 255 - bgRYB[1], 255 - bgRYB[2]]
local backRYB = [255 - bgRYB[0], 255 - bgRYB[1], 255 - bgRYB[2]]


local bgRGB = ryb2rgb(bgRYB)
local lbgRGB = ryb2rgb(titRYB)
local selRGB = ryb2rgb(selRYB)
local titRGB = ryb2rgb(titRYB)
local gslRGB = ryb2rgb(titRYB)
local pldRGB = ryb2rgb(titRYB)
local frRGB = ryb2rgb(titRYB)
local backRGB = ryb2rgb(titRYB)

try { bgRGB = fe.nv[0] } catch(e) {}
try { lbgRGB = fe.nv[0] } catch(e) {}
try { selRGB = fe.nv[1] } catch(e) {}
try { titRGB = fe.nv[1] } catch(e) {}
try { gslRGB = fe.nv[1] } catch(e) {}
try { pldRGB = fe.nv[1] } catch(e) {}
try { frRGB = fe.nv[1] } catch(e) {}
try { backRGB = fe.nv[1] } catch(e) {}

local error_message = false
if( my_config["bgrgb"] != "" ) {
	try { bgRGB = split(my_config["bgrgb"], ",").map(function(value) return value.tointeger()) }
	catch(e) { error_message = true}
}

local error_message = false
if( my_config["lbgrgb"] != "" ) {
	try { lbgRGB = split(my_config["lbgrgb"], ",").map(function(value) return value.tointeger()) }
	catch(e) { error_message = true}
}

if( my_config["selrgb"] != "" ) {
	try { selRGB = split(my_config["selrgb"], ",").map(function(value) return value.tointeger()) }
	catch(e) { error_message = true}
}

if( my_config["titrgb"] != "" ) {
	try { titRGB = split(my_config["titrgb"], ",").map(function(value) return value.tointeger()) }
	catch(e) { error_message = true}
}

if( my_config["gslrgb"] != "" ) {
	try { gslRGB = split(my_config["gslrgb"], ",").map(function(value) return value.tointeger()) }
	catch(e) { error_message = true}
}
if( my_config["pldrgb"] != "" ) {
	try { pldRGB = split(my_config["pldrgb"], ",").map(function(value) return value.tointeger()) }
	catch(e) { error_message = true}
}
if( my_config["frrgb"] != "" ) {
	try { frRGB = split(my_config["frrgb"], ",").map(function(value) return value.tointeger()) }
	catch(e) { error_message = true}
}
if( my_config["backrgb"] != "" ) {
	try { backRGB = split(my_config["backrgb"], ",").map(function(value) return value.tointeger()) }
	catch(e) { error_message = true}
}

if ( error_message || bgRGB.len() != 3 ||  lbgRGB.len() != 3 ||  selRGB.len() != 3 || titRGB.len() != 3 || gslRGB.len() != 3 || pldRGB.len() != 3 || frRGB.len() != 3 || backRGB.len() != 3)
	while (!fe.overlay.splash_message( "Background or Accent colour has a wrong format.\nPlease check it in Layout Options")){} 


//for fading of the wheel
first_tick <- 0;
stop_fading <- true;
wheel_fade_ms <- 0;
try {	wheel_fade_ms = my_config["wheel_fade_ms"].tointeger(); } catch ( e ) { }

glist_delay <- 0;
try {	glist_delay = my_config["glautohide"].tointeger(); } catch ( e ) { }


////////////////
//Background Music
////////////
local bgMusic = fe.add_sound("")
if ( my_config["enable_backgroundmusic"] == "Yes" ) {

function bgmusic_transitions( ttype, var, ttime ) {
 switch ( ttype ) {
  case Transition.FromOldSelection:
  			bgMusic.playing=false
			bgMusic.file_name = "../../music/"+fe.game_info(Info.Title)+".mp3"
            bgMusic.playing=true
            bgMusic.loop=true
  break;
  case Transition.ToGame:
  case Transition.ToNewList:
			bgMusic.playing=false
			bgMusic.file_name = "../../music/"+fe.game_info(Info.Title)+".mp3"
            bgMusic.playing=true
            bgMusic.loop=true
  break;
  }
 return false;
}
fe.add_transition_callback( "bgmusic_transitions" );
}


///////////////////
// Background Art 
/////////////////////

if ( my_config["enable_bg"] == "Flyer")
{
local bgart = PanAndScanImage( "../../menu-art/flyer/[Title]", 0, 0, flw, flh);
bgart.trigger = Transition.EndNavigation;
bgart.preserve_aspect_ratio = false;
bgart.set_fit_or_fill("fill");
bgart.set_anchor(::Anchor.Center);
bgart.set_zoom(4.5, 0.00008);
bgart.set_animate(::AnimateType.Bounce, 0.50, 0.50)
bgart.set_randomize_on_transition(true);
bgart.set_start_scale(1.0);
}

local bgflyerslide = fe.add_image("", 0, 0, flw, flh )
if ( my_config["enable_bg"] == "Custom Background Color") { bgflyerslide.file_name = "white.png";bgflyerslide.set_rgb(backRGB[0],backRGB[1],backRGB[2])}
if ( my_config["enable_bg"] == "Custom JPG") { bgflyerslide.file_name = "backgrounds/custom.jpg";}
if ( my_config["enable_bg"] == "Custom PNG") { bgflyerslide.file_name = "backgrounds/custom.png";}
if ( my_config["enable_bg"] == "City Lights") { bgflyerslide.file_name = "backgrounds/City Lights.png";}
if ( my_config["enable_bg"] == "Pixel Skyline") { bgflyerslide.file_name = "backgrounds/Pixel Skyline.png";}
//Grid Logos
if ( my_config["enable_bg"] == "Grid Logos Dark Blue") { bgflyerslide.file_name = "backgrounds/Grid Logos/Grid Dark Blue.png";}
if ( my_config["enable_bg"] == "Grid Logos Dark Grey") { bgflyerslide.file_name = "backgrounds/Grid Logos/Grid Dark Grey.png";}
if ( my_config["enable_bg"] == "Grid Logos Green") { bgflyerslide.file_name = "backgrounds/Grid Logos/Grid Green.png";}
if ( my_config["enable_bg"] == "Grid Logos Light Blue") { bgflyerslide.file_name = "backgrounds/Grid Logos/Grid Light Blue.png";}
if ( my_config["enable_bg"] == "Grid Logos Light Grey") { bgflyerslide.file_name = "backgrounds/Grid Logos/Grid Light Grey.png";}
if ( my_config["enable_bg"] == "Grid Logos Mid Blue") { bgflyerslide.file_name = "backgrounds/Grid Logos/Grid Mid Blue.png";}
if ( my_config["enable_bg"] == "Grid Logos Mid Blue") { bgflyerslide.file_name = "backgrounds/Grid Logos/Grid Mid Blue.png";}
if ( my_config["enable_bg"] == "Grid Logos Orange") { bgflyerslide.file_name = "backgrounds/Grid Logos/Grid Orange.png";}
if ( my_config["enable_bg"] == "Grid Logos Pink") { bgflyerslide.file_name = "backgrounds/Grid Logos/Grid Pink.png";}
if ( my_config["enable_bg"] == "Grid Logos Purple") { bgflyerslide.file_name = "backgrounds/Grid Logos/Grid Purple.png";}
if ( my_config["enable_bg"] == "Grid Logos Red") { bgflyerslide.file_name = "backgrounds/Grid Logos/Grid Red.png";}
if ( my_config["enable_bg"] == "Grid Logos Turquoise") { bgflyerslide.file_name = "backgrounds/Grid Logos/Grid Turquoise.png";}
if ( my_config["enable_bg"] == "Grid Logos Yellow") { bgflyerslide.file_name = "backgrounds/Grid Logos/Grid Turquoise.png";}
//Logos
if ( my_config["enable_bg"] == "Logos Dark Blue") { bgflyerslide.file_name = "backgrounds/Logos/Dark Blue.png";}
if ( my_config["enable_bg"] == "Logos Dark Grey") { bgflyerslide.file_name = "backgrounds/Logos/Dark Grey.png";}
if ( my_config["enable_bg"] == "Logos Green") { bgflyerslide.file_name = "backgrounds/Logos/Green.png";}
if ( my_config["enable_bg"] == "Logos Light Blue") { bgflyerslide.file_name = "backgrounds/Logos/Light Blue.png";}
if ( my_config["enable_bg"] == "Logos Light Grey") { bgflyerslide.file_name = "backgrounds/Logos/Light Grey.png";}
if ( my_config["enable_bg"] == "Logos Light Turquoise") { bgflyerslide.file_name = "backgrounds/Logos/Light Turquoise.png";}
if ( my_config["enable_bg"] == "Logos Mid Blue") { bgflyerslide.file_name = "backgrounds/Logos/Mid Blue.png";}
if ( my_config["enable_bg"] == "Logos Orange") { bgflyerslide.file_name = "backgrounds/Logos/Orange.png";}
if ( my_config["enable_bg"] == "Logos Pink") { bgflyerslide.file_name = "backgrounds/Logos/Pink.png";}
if ( my_config["enable_bg"] == "Logos Purple") { bgflyerslide.file_name = "backgrounds/Logos/Purple.png";}
if ( my_config["enable_bg"] == "Logos Red") { bgflyerslide.file_name = "backgrounds/Logos/Red.png";}
if ( my_config["enable_bg"] == "Logos Turquoise") { bgflyerslide.file_name = "backgrounds/Logos/Turquoise.png";}
if ( my_config["enable_bg"] == "Logos Yellow") { bgflyerslide.file_name = "backgrounds/Logos/Yellow.png";}
//Logos Mono
if ( my_config["enable_bg"] == "Mono Logos Blue") { bgflyerslide.file_name = "backgrounds/Mono Logos/Mono Logo Blue.png";}
if ( my_config["enable_bg"] == "Mono Logos Black") { bgflyerslide.file_name = "backgrounds/Mono Logos/Mono Logo Black.png";}
//Neon Logos
if ( my_config["enable_bg"] == "Neon Logos White") { bgflyerslide.file_name = "backgrounds/Neon Logos/neon white.png";}
if ( my_config["enable_bg"] == "Neon Logos Blue") { bgflyerslide.file_name = "backgrounds/Neon Logos/neon blue.png";}
if ( my_config["enable_bg"] == "Neon Logos Light Blue") { bgflyerslide.file_name = "backgrounds/Neon Logos/neon light blue.png";}
if ( my_config["enable_bg"] == "Neon Logos Pink"){ bgflyerslide.file_name = "backgrounds/Neon Logos/neon pink.png";}
if ( my_config["enable_bg"] == "Neon Logos Cyan") { bgflyerslide.file_name = "backgrounds/Neon Logos/neon cyan.png";}
//Retro Wave
if ( my_config["enable_bg"] == "Retro Wave 1") { bgflyerslide.file_name = "backgrounds/Retro Wave/1.jpg";}
if ( my_config["enable_bg"] == "Retro Wave 2") { bgflyerslide.file_name = "backgrounds/Retro Wave/2.jpg";}
if ( my_config["enable_bg"] == "Retro Wave 3") { bgflyerslide.file_name = "backgrounds/Retro Wave/3.jpg";}
if ( my_config["enable_bg"] == "Retro Wave 4") { bgflyerslide.file_name = "backgrounds/Retro Wave/4.jpg";}
if ( my_config["enable_bg"] == "Retro Wave 5") { bgflyerslide.file_name = "backgrounds/Retro Wave/5.jpg";}
if ( my_config["enable_bg"] == "Retro Wave 6") { bgflyerslide.file_name = "backgrounds/Retro Wave/6.jpg";}
if ( my_config["enable_bg"] == "Retro Wave 7") { bgflyerslide.file_name = "backgrounds/Retro Wave/7.jpg";}
if ( my_config["enable_bg"] == "Retro Wave 8") { bgflyerslide.file_name = "backgrounds/Retro Wave/8.jpg";}
if ( my_config["enable_bg"] == "Retro Wave 9") { bgflyerslide.file_name = "backgrounds/Retro Wave/9.jpg";}
if ( my_config["enable_bg"] == "Retro Wave 10") { bgflyerslide.file_name = "backgrounds/Retro Wave/10.jpg";}
if ( my_config["enable_bg"] == "Retro Wave 11") { bgflyerslide.file_name = "backgrounds/Retro Wave/11.jpg";}
if ( my_config["enable_bg"] == "Retro Wave 12") { bgflyerslide.file_name = "backgrounds/Retro Wave/12.jpg";}
if ( my_config["enable_bg"] == "Retro Wave 13") { bgflyerslide.file_name = "backgrounds/Retro Wave/13.jpg";}

if ( my_config["enable_bg_scroll"] == "Yes"){
local bgflyerslide2 = fe.add_clone(bgflyerslide);
animation.add( PropertyAnimation( bgflyerslide, {when = Transition.StartLayout, property = "x", start = 0, end = -flw, time = 50000, loop=true}));
animation.add( PropertyAnimation( bgflyerslide2, {when = Transition.StartLayout, property = "x", start = flw, end = 0, time = 50000, loop=true}));			
}




if ( my_config["enable_backgroundoverlay"] == "Light" )
{
local scanline = fe.add_image( "scanline.png", 0, 0, flw, flh );
scanline.preserve_aspect_ratio = false;
scanline.alpha = 100;
}
if ( my_config["enable_backgroundoverlay"] == "Medium" )
{
local scanline = fe.add_image( "scanline.png", 0, 0, flw, flh );
scanline.preserve_aspect_ratio = false;
scanline.alpha = 200;
}
if ( my_config["enable_backgroundoverlay"] == "Dark" )
{
local scanline = fe.add_image( "scanline.png", 0, 0, flw, flh );
scanline.preserve_aspect_ratio = false;
scanline.alpha = 255;
}
if ( my_config["enable_backgroundoverlay"] == "Diagonal")
{
local scanline = fe.add_image("scanline2.png", 0, 0, flw, flh );
}

//Border
if ( my_config["enable_border"] == "Yes") {

// Snap Background
local flx = ( fe.layout.width - layout_width ) / 2
local fly = ( fe.layout.height - layout_height ) / 2
local snapBackground = fe.add_image( "images/gradientV.png", flx, bth, flw - crw, flh - bth - bbh )
snapBackground.set_rgb( bgRGB[0] * 0.6, bgRGB[1] * 0.6, bgRGB[2] * 0.6 )
snapBackground.alpha=100;

 // Top Background
local bannerTop = fe.add_image( "white.png", flx, 0, flw, bth)
bannerTop.set_rgb( bgRGB[0], bgRGB[1], bgRGB[2] )
bannerTop.alpha=150;

// Bottom Background
local bannerBottom = fe.add_image( "white.png", flx, flh - bbh, flw, bbh)
bannerBottom.set_rgb( bgRGB[0], bgRGB[1], bgRGB[2] )
bannerBottom.alpha=150;
local flx = fe.layout.width;
local fly = fe.layout.height;
}

/////////////////////
//Video
/////////////////////

if ( my_config["aspectratio"] == "16x9") {
//Frame
if ( my_config["enable_frame"] == "Yes") {
local framebg = fe.add_image("black.png", flx*0.035, fly*0.167, flw*0.65, flh*0.67);
framebg.preserve_aspect_ratio = true;
}

if ( my_config["videomode"] == "Center") {
		if ( my_config["art_delay"] == "On") {
local last_nav = 0;
local gtime = 0;
local art_flag = true;

local video = fe.add_image( fe.get_art("snap"),flx * 0.035, fly * 0.174, flw * 0.65, flh * 0.65 );  //Use add_image so the snap doesn't auto-update while navigating
if ( my_config["enable_backgroundmusic"] == "Yes") {
	::videoSound <- Vid.NoAudio;
	video.video_flags = videoSound;
}
fe.add_transition_callback( "my_transition" );
function my_transition( ttype, var, ttime )
{
    if ( ttype == Transition.FromOldSelection || Transition.ToNewList )
    {
        last_nav = gtime;
        art_flag = true;
        video.video_playing = false
    }
}

fe.add_ticks_callback( this, "on_tick" );
function on_tick( ttime )
{
    gtime = ttime;
    if (art_flag && (ttime - last_nav > 600))  //400ms delay
    {
        video.file_name = fe.get_art("snap");
        art_flag = false;
        video.video_playing = true
    }
    if ( video.video_playing == false && video.preserve_aspect_ratio == false)
        video.preserve_aspect_ratio = true
}
}
}


if ( my_config["videomode"] == "Center") {
	if ( my_config["art_delay"] == "Off") {
local snap = FadeArt( "snap", flx * 0.035, fly * 0.155, flw * 0.65, flh * 0.7 );
if ( my_config["enable_backgroundmusic"] == "Yes") {
	::videoSound <- Vid.NoAudio;
	snap.video_flags = videoSound;
}
snap.trigger = Transition.EndNavigation;
snap.preserve_aspect_ratio = true;
	}
}


if ( my_config["videomode"] == "Full Screen") {
local snap = FadeArt( "snap", 0, 0, flw, flh );
if ( my_config["enable_backgroundmusic"] == "Yes") {
	::videoSound <- Vid.NoAudio;
	snap.video_flags = videoSound;
}
snap.trigger = Transition.EndNavigation;
if ( my_config["Preserve_Aspect_Ratio"] == "Yes")
{
snap.preserve_aspect_ratio = true;
}
}

if ( my_config["videomode"] == "Fanart") {
local snap = FadeArt( "fanart", flx * 0.035, fly * 0.155, flw * 0.65, flh * 0.7 );
snap.trigger = Transition.EndNavigation;
snap.preserve_aspect_ratio = true;
}
//////////////////
//Scanlines
///////////////////


if ( my_config["enable_scanline"] == "Light" )
{
local scanline = fe.add_image( "scanline.png",flx * 0.035, fly * 0.174, flw * 0.65, flh * 0.65 );
scanline.preserve_aspect_ratio = false;
scanline.alpha = 100;
}
if ( my_config["enable_scanline"] == "Medium" )
{
local scanline = fe.add_image( "scanline.png", flx * 0.035, fly * 0.174, flw * 0.65, flh * 0.65 );
scanline.preserve_aspect_ratio = false;
scanline.alpha = 200;
}
if ( my_config["enable_scanline"] == "Dark" )
{
local scanline = fe.add_image( "scanline.png", flx * 0.035, fly * 0.174, flw * 0.65, flh * 0.65 );
scanline.preserve_aspect_ratio = false;
scanline.alpha = 255;
}
if ( my_config["enable_scanline"] == "RGB Effect")
{
local scanline = fe.add_image("scanline3.png", flx * 0.035, fly * 0.174, flw * 0.65, flh * 0.65 );
}

//Frame
if ( my_config["enable_frame"] == "Yes") {
local frame = fe.add_image("frame.png", flx*0.035, fly*0.167, flw*0.65, flh*0.67);
frame.set_rgb( frRGB[0], frRGB[1], frRGB[2] )
frame.preserve_aspect_ratio = true;
}
}

///////////////////////////////////////////////

if ( my_config["aspectratio"] == "4x3") {
//Frame
if ( my_config["enable_frame"] == "Yes") {
local framebg = fe.add_image("black.png", flx*0.024, fly*0.2743, flw*0.64, flh*0.46 );
framebg.preserve_aspect_ratio = true;
}

if ( my_config["videomode"] == "Center") {
		if ( my_config["art_delay"] == "On") {
local last_nav = 0;
local gtime = 0;
local art_flag = true;

local video = fe.add_image( fe.get_art("snap"),flx*0.0255, fly*0.28, flw*0.63, flh*0.45 );  //Use add_image so the snap doesn't auto-update while navigating
if ( my_config["enable_backgroundmusic"] == "Yes") {
	::videoSound <- Vid.NoAudio;
	video.video_flags = videoSound;
}
fe.add_transition_callback( "my_transition" );
function my_transition( ttype, var, ttime )
{
    if ( ttype == Transition.FromOldSelection || Transition.ToNewList )
    {
        last_nav = gtime;
        art_flag = true;
        video.video_playing = false
    }
}

fe.add_ticks_callback( this, "on_tick" );
function on_tick( ttime )
{
    gtime = ttime;
    if (art_flag && (ttime - last_nav > 600))  //400ms delay
    {
        video.file_name = fe.get_art("snap");
        art_flag = false;
        video.video_playing = true
    }
    if ( video.video_playing == false && video.preserve_aspect_ratio == false)
        video.preserve_aspect_ratio = true
}
}
}


if ( my_config["videomode"] == "Center") {
	if ( my_config["art_delay"] == "Off") {
local snap = FadeArt( "snap", flx*0.025, fly*0.155, flw*0.63, flh*0.7 );
if ( my_config["enable_backgroundmusic"] == "Yes") {
	::videoSound <- Vid.NoAudio;
	snap.video_flags = videoSound;
}
snap.trigger = Transition.EndNavigation;
snap.preserve_aspect_ratio = true;
	}
}


if ( my_config["videomode"] == "Full Screen") {
local snap = FadeArt( "snap", 0, 0, flw, flh );
if ( my_config["enable_backgroundmusic"] == "Yes") {
	::videoSound <- Vid.NoAudio;
	snap.video_flags = videoSound;
}
snap.trigger = Transition.EndNavigation;
if ( my_config["Preserve_Aspect_Ratio"] == "Yes")
{
snap.preserve_aspect_ratio = true;
}
}
if ( my_config["videomode"] == "Fanart") {
local snap = FadeArt( "fanart", flx*0.025, fly*0.155, flw*0.63, flh*0.7 );
snap.trigger = Transition.EndNavigation;
snap.preserve_aspect_ratio = true;
}
//////////////////
//Scanlines
///////////////////


if ( my_config["enable_scanline"] == "Light" )
{
local scanline = fe.add_image( "scanline.png",flx*0.025, fly*0.155, flw*0.63, flh*0.7 );
scanline.preserve_aspect_ratio = false;
scanline.alpha = 100;
}
if ( my_config["enable_scanline"] == "Medium" )
{
local scanline = fe.add_image( "scanline.png", flx*0.025, fly*0.155, flw*0.63, flh*0.7 );
scanline.preserve_aspect_ratio = false;
scanline.alpha = 200;
}
if ( my_config["enable_scanline"] == "Dark" )
{
local scanline = fe.add_image( "scanline.png", flx*0.025, fly*0.155, flw*0.63, flh*0.7 );
scanline.preserve_aspect_ratio = false;
scanline.alpha = 255;
}
if ( my_config["enable_scanline"] == "RGB Effect")
{
local scanline = fe.add_image("scanline3.png", flx*0.025, fly*0.155, flw*0.63, flh*0.7 );
}
//////
//Frame
///////////
if ( my_config["enable_frame"] == "Yes") {
local frame = fe.add_image("frame.png", flx*0.024, fly*0.2743, flw*0.64, flh*0.46 );
frame.set_rgb( frRGB[0], frRGB[1], frRGB[2] )
frame.preserve_aspect_ratio = true;
}
}



//////////////////
///Flyer Art Animation
//////////////////
if ( glist_delay != 0 ){
if ( my_config["aspectratio"] == "16x9") {
if ( my_config["enable_bigart3"] == "Yes" ){
			if ( my_config["art_delay"] == "On") {

local last_flyernav = 0;
local gflyertime = 0;
local flyer_flag = false;
local flx = ( fe.layout.width - layout_width ) / 2
local fly = ( fe.layout.height - layout_height ) / 2
local flyer = fe.add_image( fe.get_art(""),flw + flx - crw - flyerW, bth, flyerW, flyerH );  //Use add_image so the snap doesn't auto-update while navigating
flyer.trigger = Transition.EndNavigation;
//Vintage effect
if ( my_config["vintage_flyer"] == "On") {
local vintage = fe.add_image("vintage.jpg",flw + flx - crw - flyerW, bth, flyerW, flyerH)
vintage.alpha = 150;
}
fe.add_transition_callback( "my_flyertransition" );
function my_flyertransition( ttype, var, ttime )
{
    if ( ttype == Transition.FromOldSelection || Transition.ToNewList )
	{
		last_flyernav = gflyertime;
		flyer_flag = true;
		flyer.video_playing = false
	}
}

fe.add_ticks_callback( this, "on_flyertick" );
function on_flyertick( ttime )
{
    gflyertime = ttime;
	if (flyer_flag && (ttime - last_flyernav > 600))  //800ms delay
	{
		flyer.file_name = fe.get_art("flyer");		
		flyer_flag = false;
		//flyer.video_playing = false

	}
//if ( flyer.video_playing == false && flyer.preserve_aspect_ratio == false)
        //flyer.preserve_aspect_ratio = true
}
}
}


if ( my_config["enable_bigart3"] == "Yes" ){
			if ( my_config["art_delay"] == "Off") {
local flx = ( fe.layout.width - layout_width ) / 2
local fly = ( fe.layout.height - layout_height ) / 2
local flyer = FadeArt("flyer",flw + flx - crw - flyerW, bth, flyerW, flyerH );

}
}
}

////////////////////////////////////////////////

if ( my_config["aspectratio"] == "4x3") {
if ( my_config["enable_bigart3"] == "Yes" ){
			if ( my_config["art_delay"] == "On") {

local last_flyernav = 0;
local gflyertime = 0;
local flyer_flag = false;
local flx = ( fe.layout.width - layout_width ) / 2
local fly = ( fe.layout.height - layout_height ) / 2
local flyer = fe.add_image( fe.get_art(""),(flw + flx - crw - flyerW)*1.135, bth*1.5, flyerW*0.8, flyerH*0.8 );  //Use add_image so the snap doesn't auto-update while navigating
flyer.trigger = Transition.EndNavigation;
//Vintage effect
if ( my_config["vintage_flyer"] == "On") {
local vintage = fe.add_image("vintage.jpg",(flw + flx - crw - flyerW)*1.135, bth*1.5, flyerW*0.8, flyerH*0.8)
vintage.alpha = 150;
}
fe.add_transition_callback( "my_flyertransition" );
function my_flyertransition( ttype, var, ttime )
{
    if ( ttype == Transition.FromOldSelection || Transition.ToNewList )
	{
		last_flyernav = gflyertime;
		flyer_flag = true;
		flyer.video_playing = false
	}
}

fe.add_ticks_callback( this, "on_flyertick" );
function on_flyertick( ttime )
{
    gflyertime = ttime;
	if (flyer_flag && (ttime - last_flyernav > 600))  //800ms delay
	{
		flyer.file_name = fe.get_art("flyer");		
		flyer_flag = false;
		//flyer.video_playing = false

	}
//if ( flyer.video_playing == false && flyer.preserve_aspect_ratio == false)
        //flyer.preserve_aspect_ratio = true

}
}
}

if ( my_config["enable_bigart3"] == "Yes" ){
			if ( my_config["art_delay"] == "Off") {
local flx = ( fe.layout.width - layout_width ) / 2
local fly = ( fe.layout.height - layout_height ) / 2
local flyer = FadeArt("flyer",(flw + flx - crw - flyerW)*1.135, bth*1.5, flyerW*0.8, flyerH*0.8 );

}
}
}
}




//////////////////////
// Filters/Category
//////////////////////
local flx = ( fe.layout.width - layout_width ) / 2
local fly = ( fe.layout.height - layout_height ) / 2
local categoryW = floor( bth * 2.5 )
local categoryH = floor( bth * 0.25 )
local categoryX = floor(( flw - crw ) * 0.5 - categoryW * 0.5 + flx)
local categoryY = floor( bth * 0.5 ) - floor( categoryH * 0.5 )
local category = fe.add_text("[FilterName]", categoryX, categoryY, categoryW, categoryH )
category.align = Align.Centre
category.filter_offset = 0
category.style = Style.Regular
category.charsize = floor(category.height * 1000/701)
category.font = "BebasNeueBold.otf"

local categoryLeft = fe.add_text("[FilterName]", 0, categoryY, categoryW, categoryH )
categoryLeft.align = Align.Centre
categoryLeft.filter_offset = -1
categoryLeft.set_rgb(selRGB[0],selRGB[1],selRGB[2])
categoryLeft.style = Style.Regular
categoryLeft.charsize = floor(category.height * 1000/700)
categoryLeft.font = "BebasNeueBook.otf"

local categoryRight = fe.add_text("[FilterName]", 0, categoryY, categoryW, categoryH )
categoryRight.align = Align.Centre
categoryRight.filter_offset = 1
categoryRight.set_rgb(selRGB[0],selRGB[1],selRGB[2])
categoryRight.style = Style.Regular
categoryRight.charsize = floor(category.height * 1000/701)
categoryRight.font = "BebasNeueBook.otf"

local categoryLeft2 = fe.add_text("[FilterName]", 0, categoryY, categoryW, categoryH )
categoryLeft2.align = Align.Centre
categoryLeft2.filter_offset = -2
categoryLeft2.set_rgb(selRGB[0],selRGB[1],selRGB[2])
categoryLeft2.style = Style.Regular
categoryLeft2.charsize = floor(category.height * 1000/701)
categoryLeft2.alpha = 0
categoryLeft2.font = "BebasNeueBook.otf"

local categoryRight2 = fe.add_text("[FilterName]", 0, categoryY, categoryW, categoryH )
categoryRight2.align = Align.Centre
categoryRight2.filter_offset = 2
categoryRight2.set_rgb(selRGB[0],selRGB[1],selRGB[2])
categoryRight2.style = Style.Regular
categoryRight2.charsize = floor(category.height * 1000/701)
categoryRight2.alpha = 0
categoryRight2.font = "BebasNeueBook.otf"


local categoryGap = floor( bth * 0.225 )
categoryLeft.x = category.x - category.msg_width / 2 - categoryLeft.msg_width / 2 - categoryGap
categoryRight.x = category.x + category.msg_width / 2 + categoryRight.msg_width / 2 + categoryGap
categoryLeft2.x = categoryLeft.x - categoryLeft.msg_width / 2 - categoryLeft2.msg_width / 2 - categoryGap
categoryRight2.x = categoryRight.x + categoryRight.msg_width / 2  + categoryRight2.msg_width / 2 + categoryGap

// Category Animations
local categoryOvershot = 4
local categorySmoothing = 0.9
local categoryAnimX = Animate( category, "x", categoryOvershot, 0, categorySmoothing )
local categoryLeftAnimX = Animate( categoryLeft, "x", categoryOvershot, 0, categorySmoothing )
local categoryRightAnimX = Animate( categoryRight, "x", categoryOvershot, 0, categorySmoothing )
local categoryLeft2AnimX = Animate( categoryLeft2, "x", categoryOvershot, 0, categorySmoothing )
local categoryRight2AnimX = Animate( categoryRight2, "x", categoryOvershot, 0, categorySmoothing )
local categoryLeftAnimA = Animate( categoryLeft, "alpha", categoryOvershot, 0, categorySmoothing )
local categoryRightAnimA = Animate( categoryRight, "alpha", categoryOvershot, 0, categorySmoothing )
local categoryLeft2AnimA = Animate( categoryLeft2, "alpha", categoryOvershot, 0, categorySmoothing )
local categoryRight2AnimA = Animate( categoryRight2, "alpha", categoryOvershot, 0, categorySmoothing )
local flx = fe.layout.width;
local fly = fe.layout.height;

/////////////////////
//Display current time
/////////////////////
if ( my_config["enable_clock"] == "Yes" ){
  local dt = fe.add_text( "", flw*0.65, flh*0.03, flw*0.3, flh*0.095 );
dt.align = Align.Centre
dt.filter_offset = 1
//dt.set_rgb(selRGB[0],selRGB[1],selRGB[2])
dt.style = Style.Regular
dt.charsize = floor(category.height * 1000/701)
dt.font = "BebasNeueBook.otf"

  local clock = fe.add_image ("clock.png",flw*0.73, flh*0.042, flw*0.040, flh*0.06);
  clock.alpha = 255;
  clock.preserve_aspect_ratio = true;
//  clock.set_rgb(titRGB[0],titRGB[1],titRGB[2])

function update_clock( ttime ){
  local now = date();
  dt.msg = format("%02d", now.hour) + ":" + format("%02d", now.min );
}
  fe.add_ticks_callback( this, "update_clock" );
}

//////////////////////////////////////////////////
//begin system info stuff (by Steve Sherrod)
//////////////////////////////////////////////////
if ( my_config["showSysInfo"] == "Yes" ){
local ii = 0;
local rr = 0;

// System info tick callback
function update_sysinfo( tick_time )
{
	ii+= 1;
	if (ii >= 3000){
		fe.plugin_command( "python", "/home/pi/.attract/layouts/system-info/system-info.py -i", "PluginSysInfoRet" );
		 
		ii = 0;
	} 
}

local txtCpuTemp = fe.add_text( "0C", flw*0.82, flh*0.872, flw*0.18, flh*0.024 );
local txtCpuSpeed = fe.add_text( "CPU Speed: ", flw*0.82, flh*0.892, flw*0.18, flh*0.024 )
local txtTotalMem = fe.add_text( "Memory Usage: ", flw*0.82, flh*0.912, flw*0.18, flh*0.024 );
local txtIPAddress = fe.add_text( "IP Address: ", flw*0.82, flh*0.932, flw*0.18, flh*0.024 );
local txtUpTime = fe.add_text( "Uptime: ", flw*0.82, flh*0.952, flw*0.18, flh*0.024 );

txtCpuTemp.align = Align.Right;
txtCpuSpeed.align = Align.Right;
txtTotalMem.align = Align.Right;
txtUpTime.align = Align.Right;
txtIPAddress.align = Align.Right;

// System info callback function
local output="";
function PluginSysInfoRet(StrRet)
{
	output += rstrip(StrRet) + "\n";
	local substrings = split(output, "||");

	local strPrefix = substrings[0];
	
	if (strPrefix == "sysinfo"){
		txtCpuTemp.msg = "CPU Temp: " + substrings[4];
		txtCpuSpeed.msg = "CPU Speed: " + substrings[6];
		txtTotalMem.msg = "Memory Usage: " + substrings[13] + "\\" + substrings[12];
		txtIPAddress.msg = "IP Address: " + substrings[7];
		txtUpTime.msg = "Uptime: " + substrings[3];
	}
	
	output=""
};

if ( my_config["showSysInfo"] == "Yes" ){
	fe.plugin_command( "python", "/home/pi/.attract/layouts/system-info/system-info.py -i", "PluginSysInfoRet" );
	fe.add_ticks_callback(this, "update_sysinfo");
} else {

		txtCpuTemp.msg = "";
		txtCpuSpeed.msg = "";
		txtTotalMem.msg = "";
		txtIPAddress.msg = "";
		txtUpTime.msg = "";
};
}
/////////////////////////////////////////////////////////
//end system info stuff
/////////////////////////////////////////////////////////

///////////////////////
//wheel overlay
///////////////////////
if ( my_config["enable_list_type"] == "Vertical Wheel" )
{
local wheelOverlay = fe.add_image ("white.png", flx*0.7, 0, flw*0.32, fly)
wheelOverlay.set_rgb(lbgRGB[0],lbgRGB[1],lbgRGB[2])
wheelOverlay.alpha = 200;
 local wheelOverlayFade = {
    when = Transition.ToNewSelection,
	property = "alpha",
	start = 200,
	end = 200,
	time = 1,
	pulse = false
	loop = false
 } 
 
  local wheelOverlayFadeLoad = {
    when = Transition.EndNavigation,
	property = "alpha",
	start = 200,
	end = 0,
	time = 1,
	delay = 2700,
	pulse = false
	loop = false
 } 
 
animation.add( PropertyAnimation ( wheelOverlay, wheelOverlayFade ) );
animation.add( PropertyAnimation ( wheelOverlay, wheelOverlayFadeLoad ) );
 }

 
 
//////////////////////////////////////////////////////////////////////////////////////////////////
// The following section sets up what type and wheel and displays the users choice

if ( my_config["enable_list_type"] != "List Box" ){
//Low horizontal

if ( my_config["enable_list_type"] == "Horizontal" )
{
fe.load_module( "conveyor" );
local wheel_x = [ -flx*0.45, -flx*0.3, -flx*0.2, -flx*0.04, flx*0.12 flx*0.28, flx*0.44, flx*0.6, flx*0.76 flx*0.92, flx*1.08, flx*1.24 ];
local wheel_y = [ fly*0.82, fly*0.82, fly*0.82, fly*0.82, fly*0.82, fly*0.82, fly*0.82, fly*0.82, fly*0.82, fly*0.82, fly*0.82, fly*0.82, ]; 
local wheel_w = [ flw*0.13, flw*0.13, flw*0.13, flw*0.13, flw*0.13, flw*0.13, flw*0.13, flw*0.13, flw*0.13, flw*0.13, flw*0.13, flw*0.13, ];
local wheel_a = [  255,  255,  255,  255,  255,  255, 255,  255,  255,  255,  255,  255, ];
local wheel_h = [  flh*0.2,  flh*0.2,  flh*0.2,  flh*0.2,  flh*0.2,  flh*0.2, flh*0.2,  flh*0.2,  flh*0.2,  flh*0.2,  flh*0.2,  flh*0.2, ];
local wheel_r = [  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ];
local num_arts = 12;

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

// we do it this way so that the last wheelentry created is the Center one showing the current
// selection (putting it at the top of the draw order)
for ( local i=0; i<remaining; i++ )
	wheel_entries.insert( num_arts/2, WheelEntry() );

conveyor <- Conveyor();
conveyor.set_slots( wheel_entries );
conveyor.transition_ms = 50;
try { conveyor.transition_ms = my_config["transition_ms"].tointeger(); } catch ( e ) { }
{ 

//property animation - wheel pointers


local point = fe.add_image("pointerh.png", flx*0.404, fly*0.8, flw*0.2, flh*0.35);

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
    property = "y",
    start = fly*0.79,
    end = point.y,
    time = 200	
}	
animation.add( PropertyAnimation( point, movex_cfg ) );
}
}

//Low horizontal Animated
if ( my_config["enable_list_type"] == "Horizontal Animated" )
{
fe.load_module( "conveyor" );
local wheel_x = [ -flx*0.45, -flx*0.3, -flx*0.2, -flx*0.04, flx*0.12 flx*0.28, flx*0.44, flx*0.6, flx*0.76 flx*0.92, flx*1.08, flx*1.24 ];
local wheel_y = [ fly*0.82, fly*0.82, fly*0.82, fly*0.82, fly*0.82, fly*0.82, fly*0.82, fly*0.82, fly*0.82, fly*0.82, fly*0.82, fly*0.82, ]; 
local wheel_w = [ flw*0.13, flw*0.13, flw*0.13, flw*0.13, flw*0.13, flw*0.13, flw*0.13, flw*0.13, flw*0.13, flw*0.13, flw*0.13, flw*0.13, ];
local wheel_a = [  255,  255,  255,  255,  255,  255, 0,  255,  255,  255,  255,  255, ];
local wheel_h = [  flh*0.2,  flh*0.2,  flh*0.2,  flh*0.2,  flh*0.2,  flh*0.2, flh*0.2,  flh*0.2,  flh*0.2,  flh*0.2,  flh*0.2,  flh*0.2, ];
local wheel_r = [  0, 0, 0, 0, 0, 0, 0.5, 0, 0, 0, 0, 0, ];
local num_arts = 12;

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

// we do it this way so that the last wheelentry created is the Center one showing the current
// selection (putting it at the top of the draw order)
for ( local i=0; i<remaining; i++ )
	wheel_entries.insert( num_arts/2, WheelEntry() );

conveyor <- Conveyor();
conveyor.set_slots( wheel_entries );
conveyor.transition_ms = 50;
try { conveyor.transition_ms = my_config["transition_ms"].tointeger(); } catch ( e ) { }
{ 

//property animation - wheel pointers


local point = fe.add_image("pointerh.png", flx*0.404, fly*0.8, flw*0.2, flh*0.35);

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
    property = "y",
    start = fly*0.79,
    end = point.y,
    time = 200	
}	
animation.add( PropertyAnimation( point, movex_cfg ) );
}
}
 
 //This enables vertical art instead of default wheel
if ( my_config["enable_list_type"] == "Vertical Wheel" )
{
fe.load_module( "conveyor" );
local wheel_x = [ flx*0.79, flx*0.79, flx*0.79, flx*0.79, flx*0.79, flx*0.79, flx*0.79, flx*0.79, flx*0.79, flx*0.79, flx*0.79, flx*0.79, ]; 
local wheel_y = [ -fly*0.210, -fly*0.105, fly*0.0, fly*0.105, fly*0.210, fly*0.315, fly*0.420, fly*0.525, fly*0.630 fly*0.735, fly*0.840, fly*0.945, ];
local wheel_w = [ flw*0.13, flw*0.13, flw*0.13, flw*0.13, flw*0.13, flw*0.13, flw*0.13, flw*0.13, flw*0.13, flw*0.13, flw*0.13, flw*0.13, ];
local wheel_a = [  0,  0,  0,  255,  255,  255, 255,  255,  255,  0,  0,  0, ];
local wheel_h = [  flh*0.2,  flh*0.2,  flh*0.2,  flh*0.2,  flh*0.2,  flh*0.2, flh*0.2,  flh*0.2,  flh*0.2,  flh*0.2,  flh*0.2,  flh*0.2, ];
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

// we do it this way so that the last wheelentry created is the Center one showing the current
// selection (putting it at the top of the draw order)
for ( local i=0; i<remaining; i++ )
	wheel_entries.insert( num_arts/2, WheelEntry() );

conveyor <- Conveyor();
conveyor.set_slots( wheel_entries );
conveyor.transition_ms = 50;
try { conveyor.transition_ms = my_config["transition_ms"].tointeger(); } catch ( e ) { }

{ 

//property animation - wheel pointers


local point = fe.add_image("pointer.png", flx*0.88, fly*0.34, flw*0.2, flh*0.35);

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
    start = flx*0.87,
    end = point.x,
    time = 200	
}	
animation.add( PropertyAnimation( point, movex_cfg ) );
}
}
conveyor.preserve_aspect_ratio = true;
}




////////////////////////////////////////////////////////////////////////////
///
///Animated Wheel Options
///////////////////////////////////////////////////////////////////////////
if ( my_config["enable_list_type"] == "Horizontal Animated" ){
local bigart = fe.add_artwork(( my_config["orbit_art"] ), flx*0.44, fly*0.82, flw*0.13, flh*0.2);
bigart.preserve_aspect_ratio = true;

local bigart_rotate_onload = {
    when = When.StartLayout,
    when = Transition.ToNewList,
    property = "rotation",
    start = 90,
    end = 0,
    time = 1500,
    tween = Tween.Expo
    loop=false
 }

if ( my_config["enable_wheelartrotateonload"] == "Yes" ){
animation.add( PropertyAnimation ( bigart, bigart_rotate_onload ) );
}

local bigartscale_onload = {
    when = When.StartLayout,
    when = Transition.ToNewList,
    property = "scale",
    start = 1.2,
    end = 1.0,
    time = 1000	
    tween = Tween.Quad,
}

local bigartfade_onload = {
    when = When.StartLayout,
    when = Transition.ToNewList,
	property = "alpha",
	delay = 500
	start = 255,
	end = 0,
	time = 2000,
	pulse = false
	loop = false
 }
if ( my_config["enable_wheelartscaleonload"] == "Yes" ){
animation.add( PropertyAnimation ( bigart, bigartscale_onload ) );
}
if ( my_config["enable_wheelartfadeonload"] == "Yes" ){
animation.add( PropertyAnimation ( bigart, bigartfade_onload ) );
}

local bigartscale = {
    when = Transition.ToNewSelection,
    property = "scale",
    start = 1.2,
    end = 1.0,
    time = 500	
    tween = Tween.Quad,
	pulse = false
//	delay = 500
	
}

local bigartx = {
    when = Transition.ToNewSelection,
    property = "x",
    start = flx*1
    end = flx*0.44
    time = 1500,
    tween = Tween.Expo
	pulse = false
 }  
 
local bigartskew_x = {
    when = Transition.ToNewSelection ,
	property = "skew_x",
	start = 255,
    end = 0,
	time = 1500,
	loop = false
	pulse = false
 } 
 
local bigartfade = {
    when = Transition.ToNewSelection ,
	property = "alpha",
//	delay = 500
	start = 255,
	end = 0,
	time = 4000,
	pulse = false
	loop = false
 } 
local bigartrotate = {
    when = Transition.ToNewSelection,
    property = "rotation",
    start = 90,
    end = 0,
    time = 1500,
    tween = Tween.Expo
    loop=false
 } 
 
 
//Animation

if ( my_config["enable_wheelartrotate"] == "Yes" ){
animation.add( PropertyAnimation ( bigart, bigartrotate ) );
}
if ( my_config["enable_wheelartscale"] == "Yes" ){
animation.add( PropertyAnimation ( bigart, bigartscale ) );
}
if ( my_config["enable_wheelartflyin"] == "Yes" ){
animation.add( PropertyAnimation ( bigart, bigartx ) );
animation.add( PropertyAnimation ( bigart, bigartskew_x ) );
}
if ( my_config["enable_wheelartfade"] == "Yes" ){
animation.add( PropertyAnimation ( bigart, bigartfade ) );
}
}
////////////////////////////////////
if ( my_config["enable_list_type"] == "Horizontal Low Big Animated" ){
local bigart = fe.add_artwork(( my_config["orbit_art"] ), flx*0.44, fly*0.59, flw*0.22, flh*0.37);
bigart.preserve_aspect_ratio = true;


local bigart_rotate_onload = {
    when = When.StartLayout,
    when = Transition.ToNewList,
    property = "rotation",
    start = 90,
    end = 0,
    time = 1500,
    tween = Tween.Expo
    loop=false
 }

if ( my_config["enable_wheelartrotateonload"] == "Yes" ){
animation.add( PropertyAnimation ( bigart, bigart_rotate_onload ) );
}

local bigartscale_onload = {
    when = When.StartLayout,
    when = Transition.ToNewList,
    property = "scale",
    start = 0.1,
    end = 1.0,
    time = 1000	
    tween = Tween.Quad,
}

local bigartfade_onload = {
    when = When.StartLayout,
    when = Transition.ToNewList,
	property = "alpha",
	delay = 500
	start = 255,
	end = 0,
	time = 2000,
	pulse = false
	loop = false
 }

if ( my_config["enable_wheelartscaleonload"] == "Yes" ){
animation.add( PropertyAnimation ( bigart, bigartscale_onload ) );
}
if ( my_config["enable_wheelartfadeonload"] == "Yes" ){
animation.add( PropertyAnimation ( bigart, bigartfade_onload ) );
}

local bigartscale = {
    when = Transition.ToNewSelection,
    property = "scale",
    start = 1.2,
    end = 1.0,
    time = 500	
    tween = Tween.Quad,
	pulse = false
//	delay = 500
}

local bigartx = {
    when = Transition.ToNewSelection,
    property = "x",
    start = flx*1
    end = flx*0.44
    time = 1500,
    tween = Tween.Expo
	pulse = false
 }
 
local bigartskew_x = {
    when = Transition.ToNewSelection ,
	property = "skew_x",
	start = 255,
    end = 0,
	time = 1500,
	loop = false
	pulse = false
 }
 
local bigartfade = {
    when = Transition.ToNewSelection ,
	property = "alpha",
//	delay = 500
	start = 255,
	end = 0,
	time = 4000,
	pulse = false
	loop = false
 } 
 local bigartrotate = {
    when = Transition.ToNewSelection,
    property = "rotation",
    start = 90,
    end = 0,
    time = 1500,
    tween = Tween.Expo
    loop=false
 }
 
 
//Animation

if ( my_config["enable_wheelartrotate"] == "Yes" ){
animation.add( PropertyAnimation ( bigart, bigartrotate ) );
}
if ( my_config["enable_wheelartscale"] == "Yes" ){
animation.add( PropertyAnimation ( bigart, bigartscale ) );
}
if ( my_config["enable_wheelartflyin"] == "Yes" ){
animation.add( PropertyAnimation ( bigart, bigartx ) );
animation.add( PropertyAnimation ( bigart, bigartskew_x ) );
}
if ( my_config["enable_wheelartfade"] == "Yes" ){
animation.add( PropertyAnimation ( bigart, bigartfade ) );
}
}


/////////////////////////// 
/////Wheel fading
///////////////////////////

if ( (my_config["enable_list_type"] == "Vertical Wheel" ) || ( my_config["enable_list_type"] == "Horizontal Boxart" ))
{
if ( wheel_fade_ms > 0 && ( my_config["enable_list_type"] == "Wheel Right" || my_config["enable_list_type"] == "Vertical Wheel" || my_config["enable_list_type"] == "Vertical Wheel Left" || my_config["enable_list_type"] == "Wheel Left" || my_config["enable_list_type"] == "Horizontal Low" || my_config["enable_list_type"] == "Horizontal Center" || my_config["enable_list_type"] == "Horizontal Low Animated" || my_config["enable_list_type"] == "Horizontal Low Big") || my_config["enable_list_type"] == "Horizontal Low Big Animated" )
{
	
	function wheel_fade_transition( ttype, var, ttime )
	{
		if ( ttype == Transition.ToNewSelection || ttype == Transition.ToNewList )
				first_tick = -1;
	}
	fe.add_transition_callback( "wheel_fade_transition" );
	
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
					//4 = Center one -> full alpha others use 80
					if (i == 6)
						conveyor.m_objs[i].alpha = (255 * (wheel_fade_ms - elapsed)) / wheel_fade_ms;
					else
						conveyor.m_objs[i].alpha = (255 * (wheel_fade_ms - elapsed)) / wheel_fade_ms;
			}

			if ( elapsed > wheel_fade_ms)
			{
				//So we don't keep doing the loop above when all values have 0 alpha
				stop_fading = true;
				//point.alpha = 0;
			}
			else
				//hardcoded default pointer with full alpha alpha
				//point.alpha = (255 * (wheel_fade_ms - elapsed)) / wheel_fade_ms;

		  if (first_tick == -1)
				first_tick = ttime;
		}
	}
	fe.add_ticks_callback( "wheel_alpha" );
}
}
 



local layout_width = fe.layout.width
local layout_height = fe.layout.height
local flx = ( fe.layout.width - layout_width ) / 2
local fly = ( fe.layout.height - layout_height ) / 2
local flw = layout_width
local flh = layout_height








// Game ListBox Background
local gameListBoxBackground = fe.add_text("", flx + flw - crw, 0, lbw, flh )
gameListBoxBackground.set_bg_rgb( lbgRGB[0] * 0.75, lbgRGB[1] * 0.75, lbgRGB[2] * 0.75 )
gameListBoxBackground.bg_alpha = 0



// Game ListBox
local gameListBox = fe.add_listbox( flx + flw - crw, bth, lbw, flh - bth - bbh)
gameListBox.align = Align.Left
gameListBox.rows = glr
gameListBox.charsize = floor( floor( flh - bth - bbh ) / glr * 0.7 )
gameListBox.set_sel_rgb( 240, 240, 240 )
gameListBox.set_selbg_rgb( gslRGB[0], gslRGB[1], gslRGB[2] )
gameListBox.set_bg_rgb( 255, 0, 0 )
gameListBox.font = "BebasNeueRegular.otf"
gameListBox.style = Style.Regular
gameListBox.sel_style = Style.Regular
gameListBox.y += floor( ( gameListBox.height - ( floor( gameListBox.height / gameListBox.rows ) * gameListBox.rows ) ) / 2 )


// Game Listbox Animations
local gameListBoxAnimX = Animate( gameListBox, "x", 4, glist_delay, 0.4 )
local gameListBoxAnimA = Animate( gameListBox, 255, 1, glist_delay, 0.4 )
local gameListBoxBackgroundAnimX = Animate( gameListBoxBackground, "x", 4, glist_delay, 0.4 )
local gameListBoxBackgroundAnimA = Animate( gameListBoxBackground, "bg_alpha", 1, glist_delay, 0.4 )
if ( glist_delay == 0 ) {
	gameListBoxAnimX.to = flw + flx - crw - lbw
	gameListBoxBackgroundAnimX.to = flw + flx - crw - lbw
	gameListBoxAnimA.to = 255
	gameListBoxBackgroundAnimA.to = 255
}


// Favourite Icon
local favIconMargin = floor(bbh * 0.0625)
local favouriteIcon = fe.add_image("images/star.png", flx + favIconMargin, flh - bbh + favIconMargin, bbh - favIconMargin * 2, bbh - favIconMargin * 2)
favouriteIcon.set_rgb( gslRGB[0], gslRGB[1], gslRGB[2] )
 
// Game Title
if ( my_config["enable_title"] == "Yes") {
if (( my_config["enable_list_type"] == "Horizontal"  ) || ( my_config["enable_list_type"] == "Horizontal Animated") || ( my_config["enable_list_type"] == "Horizontal Boxart")){
local gameTitleW = flw - crw - bbm - bbm
local gameTitleH = floor( bbh * 0.35 ) 
local gameTitle = fe.add_text( "[Title]", (flx + bbm)*11, (flh - bbh + bbm)*0.07, gameTitleW, gameTitleH )
gameTitle.align = Align.Left
gameTitle.style = Style.Regular
gameTitle.nomargin = true
gameTitle.set_rgb(titRGB[0],titRGB[1],titRGB[2])
gameTitle.charsize = floor(gameTitle.height * 1000/700)
gameTitle.font = "BebasNeueBold.otf"

// Game Year And Manufacturer
function year_formatted()
{
	local m = fe.game_info( Info.Manufacturer )
	local y = fe.game_info( Info.Year )

	if (( m.len() > 0 ) && ( y.len() > 0 ))
		return "© " + y + "  " + m

	return m
}

local gameYearW = flw - crw - bbm - floor( bbh * 2.875 )
local gameYearH = floor( bbh * 0.15 )
local gameYear = fe.add_text( "Project HyperPie 2018", (flx + bbm)*11, (flh - bbm - gameYearH)*0.13, gameYearW, gameYearH )
gameYear.align = Align.Left
gameYear.style = Style.Regular
gameYear.nomargin = true
gameYear.charsize = floor(gameYear.height * 1000/700)
gameYear.font = flh <= 600 ? "BebasNeueRegular.otf": "BebasNeueBook.otf"

local gameTitleFade = {
    when = Transition.ToNewSelection,
	property = "alpha",
	start = 255,
	end = 0,
	time = 4000,
	pulse = false
	loop = false
 } 
 
 local gameYearFade = {
    when = Transition.ToNewSelection,
	property = "alpha",
	start = 255,
	end = 0,
	time = 4000,
	pulse = false
	loop = false


 }
 local gameTitleFadeStart = {
    when = Transition.StartLayout,
	property = "alpha",
	start = 255,
	end = 0,
	time = 4000,
	pulse = false
	loop = false
 } 
 
 local gameYearFadeStart = {
    when = Transition.StartLayout,
	property = "alpha",
	start = 255,
	end = 0,
	time = 4000,
	pulse = false
	loop = false
 } 
if ( my_config["fadeWheelTitle"] == "Yes" ){
	animation.add( PropertyAnimation ( gameTitle, gameTitleFade ) );
	animation.add( PropertyAnimation ( gameYear, gameYearFade ) );
	animation.add( PropertyAnimation ( gameTitle, gameTitleFadeStart ) );
	animation.add( PropertyAnimation ( gameYear, gameYearFadeStart ) );
	}


}
if (( my_config["enable_list_type"] == "Vertical Wheel"  ) || ( my_config["enable_list_type"] == "List Box")){
local gameTitleW = flw - crw - bbm - bbm
local gameTitleH = floor( bbh * 0.35 ) 
local gameTitle = fe.add_text( "[Title]", flx + bbm, flh - bbh + bbm, gameTitleW, gameTitleH )
gameTitle.align = Align.Left
gameTitle.style = Style.Regular
gameTitle.nomargin = true
gameTitle.set_rgb(titRGB[0],titRGB[1],titRGB[2])
gameTitle.charsize = floor(gameTitle.height * 1000/700)
gameTitle.font = "BebasNeueBold.otf"

// Game Year And Manufacturer
function year_formatted()
{
	local m = fe.game_info( Info.Manufacturer )
	local y = fe.game_info( Info.Year )

	if (( m.len() > 0 ) && ( y.len() > 0 ))
		return "© " + y + "  " + m

	return m
}

local gameYearW = flw - crw - bbm - floor( bbh * 2.875 )
local gameYearH = floor( bbh * 0.15 )
local gameYear = fe.add_text( "Project HyperPie 2018", flx + bbm, flh - bbm - gameYearH, gameYearW, gameYearH )
gameYear.align = Align.Left
gameYear.style = Style.Regular
gameYear.nomargin = true
gameYear.charsize = floor(gameYear.height * 1000/700)
gameYear.font = flh <= 600 ? "BebasNeueRegular.otf": "BebasNeueBook.otf"

local gameTitleFade = {
    when = Transition.ToNewSelection,
	property = "alpha",
	start = 255,
	end = 0,
	time = 4000,
	pulse = false
	loop = false
 } 
 
 local gameYearFade = {
    when = Transition.ToNewSelection,
	property = "alpha",
	start = 255,
	end = 0,
	time = 4000,
	pulse = false
	loop = false


 }
 local gameTitleFadeStart = {
    when = Transition.StartLayout,
	property = "alpha",
	start = 255,
	end = 0,
	time = 4000,
	pulse = false
	loop = false
 } 
 
 local gameYearFadeStart = {
    when = Transition.StartLayout,
	property = "alpha",
	start = 255,
	end = 0,
	time = 4000,
	pulse = false
	loop = false
 } 
if ( my_config["fadeWheelTitle"] == "Yes" ){
	animation.add( PropertyAnimation ( gameTitle, gameTitleFade ) );
	animation.add( PropertyAnimation ( gameYear, gameYearFade ) );
	animation.add( PropertyAnimation ( gameTitle, gameTitleFadeStart ) );
	animation.add( PropertyAnimation ( gameYear, gameYearFadeStart ) );
	}
}
}


// Wheel Image
if (( my_config["LeftWheel"] == "Yes")|| ( my_config["LeftWheel"] == "Fade Out" )){

local wheelScale = ( flw - crw * 2 ) < flh ? flw - crw * 2 : flh
local wheelImageW = floor( wheelScale * 0.3 )*0.9
local wheelImageH = floor( wheelScale * 0.3 )*0.9
local wheelImage = fe.add_artwork( "wheel" ,flx + bbm, bth - floor( wheelImageH / 2 ), wheelImageW, wheelImageH )
wheelImage.preserve_aspect_ratio = true
//wheelImage.trigger = Transition.EndNavigation;

local fadeLeftWheel = {
    when = Transition.ToNewSelection,
	property = "alpha",
	start = 255,
	end = 0,
	time = 4000,
	pulse = false
	loop = false
 } 
 
 local fadeLeftWheelStart = {
    when = Transition.StartLayout,
	property = "alpha",
	start = 255,
	end = 0,
	time = 4000,
	pulse = false
	loop = false
 } 
 

if ( my_config["LeftWheel"] == "Fade Out" ){
	animation.add( PropertyAnimation ( wheelImage, fadeLeftWheel ) );
	animation.add( PropertyAnimation ( wheelImage, fadeLeftWheelStart ) );
	}
}



// List Entry
local gameListEntryW = floor( bth * 2.5 )
local gameListEntryH = floor( bth * 0.25 )
local gameListEntryY = floor( bth / 2.0 ) - floor( gameListEntryH / 2 )
local gameListEntry = fe.add_text("[ListEntry]/[ListSize]", flx + flw - crw - gameListEntryW, gameListEntryY , gameListEntryW, gameListEntryH )
gameListEntry.align = Align.Right
gameListEntry.style = Style.Regular
gameListEntry.font = "BebasNeueLight.otf"
gameListEntry.set_rgb(titRGB[0],titRGB[1],titRGB[2])
gameListEntry.charsize = floor(gameListEntry.height * 1000/700)



// Transitions
if ( my_config["aspectratio"] == "16x9") {
fe.add_transition_callback( this, "on_transition" )

function on_transition( ttype, var, ttime ) {
	if( ttype == Transition.ToNewSelection) {
	if ( my_config["enable_list_type"] == "List Box" ){
			gameListBoxAnimX.to = flw + flx - crw - lbw
			if ( glist_delay != 0 ) gameListBoxAnimX.hide( flw + flx - crw, fe.layout.time )
			gameListBoxAnimA.to = ListBoxAlpha
			if ( glist_delay != 0 ) gameListBoxAnimA.hide( 0, fe.layout.time )
			gameListBoxBackgroundAnimX.to = flw + flx - crw - lbw
			if ( glist_delay != 0 ) gameListBoxBackgroundAnimX.hide( flw + flx - crw, fe.layout.time )
			gameListBoxBackgroundAnimA.to = ListBoxAlpha
			if ( glist_delay != 0 ) gameListBoxBackgroundAnimA.hide( 0, fe.layout.time )
			}
		}
		
	if( ttype == Transition.EndNavigation ) {

		update_artwork = true	
		update_counter = 0
	}
	
	if( ttype == Transition.ToNewList || When.StartLayout) {
		
		update_artwork = true	
		update_counter = 0

		if ( my_config["enable_list_type"] == "List Box" ){
			gameListBoxAnimX.from = flw + flx - crw
			gameListBoxAnimX.to = flw + flx - crw - lbw
			gameListBoxBackgroundAnimX.from = flw + flx - crw
			gameListBoxBackgroundAnimX.to = flw + flx - crw - lbw
		}
			categoryAnimX.from = categoryX + category.msg_width * 0.5 + categoryLeft.msg_width * 0.5 + categoryGap
			categoryAnimX.to = categoryX
			categoryRightAnimA.from = 0
			categoryRightAnimA.to = ListBoxAlpha
			categoryRight2AnimA.from = 0.01
			categoryRight2AnimA.to = 0
			categoryLeft2AnimA.from = ListBoxAlpha
			categoryLeft2AnimA.to = 0

		if ( glist_delay != 0 ) gameListBoxAnimX.hide( flw + flx - crw, fe.layout.time )
		gameListBoxAnimA.from = 0
		gameListBoxAnimA.to = ListBoxAlpha
		if ( glist_delay != 0 ) gameListBoxAnimA.hide( 0, fe.layout.time )
		if ( glist_delay != 0 ) gameListBoxBackgroundAnimX.hide( flw + flx - crw, fe.layout.time )
		gameListBoxBackgroundAnimA.from = 0
		gameListBoxBackgroundAnimA.to = ListBoxAlpha
		if ( glist_delay != 0 ) gameListBoxBackgroundAnimA.hide( 0, fe.layout.time )
		
		if ( var < 0 ) {
			if ( my_config["enable_list_type"] == "List Box" ){
			gameListBoxAnimX.from = flw + flx - crw
			gameListBoxAnimX.to = flw + flx - crw - lbw
			gameListBoxBackgroundAnimX.from = flw + flx - crw
			gameListBoxBackgroundAnimX.to = flw + flx - crw - lbw
			}
			categoryAnimX.from = categoryX - category.msg_width * 0.5 - categoryRight.msg_width * 0.5 - categoryGap
			categoryAnimX.to = categoryX
			categoryLeftAnimA.from = 0
			categoryLeftAnimA.to = 255
			categoryLeft2AnimA.from = 0.01
			categoryLeft2AnimA.to = 0
			categoryRight2AnimA.from = 255
			categoryRight2AnimA.to = 0
		}
		
		if ( var > 0 ) {
			if ( my_config["enable_list_type"] == "List Box" ){
			gameListBoxAnimX.from = flw + flx - crw
			gameListBoxAnimX.to = flw + flx - crw - lbw
			gameListBoxBackgroundAnimX.from = flw + flx - crw
			gameListBoxBackgroundAnimX.to = flw + flx - crw - lbw
			}
			categoryAnimX.from = categoryX + category.msg_width * 0.5 + categoryLeft.msg_width * 0.5 + categoryGap
			categoryAnimX.to = categoryX
			categoryRightAnimA.from = 0
			categoryRightAnimA.to = ListBoxAlpha
			categoryRight2AnimA.from = 0.01
			categoryRight2AnimA.to = 0
			categoryLeft2AnimA.from = ListBoxAlpha
			categoryLeft2AnimA.to = 0
		}

		categoryLeftAnimX.from = categoryAnimX.from - category.msg_width / 2 - categoryLeft.msg_width / 2 - categoryGap
		categoryLeftAnimX.to = categoryAnimX.to - category.msg_width / 2 - categoryLeft.msg_width / 2 - categoryGap
		categoryRightAnimX.from = categoryAnimX.from + category.msg_width / 2 + categoryRight.msg_width / 2 + categoryGap
		categoryRightAnimX.to = categoryAnimX.to + category.msg_width / 2 + categoryRight.msg_width / 2 + categoryGap

		categoryLeft2AnimX.from = categoryLeftAnimX.from - categoryLeft.msg_width / 2 - categoryLeft2.msg_width / 2 - categoryGap
		categoryLeft2AnimX.to = categoryLeftAnimX.to - categoryLeft.msg_width / 2 - categoryLeft2.msg_width / 2 - categoryGap
		categoryRight2AnimX.from = categoryRightAnimX.from + categoryRight.msg_width / 2 + categoryRight2.msg_width / 2 + categoryGap
		categoryRight2AnimX.to = categoryRightAnimX.to + categoryRight.msg_width / 2 + categoryRight2.msg_width / 2 + categoryGap
	}
	
	if( ttype == Transition.ToNewSelection || Transition.ToNewList) {
		if (fe.game_info(Info.Favourite, var) == "1") favouriteIcon.visible = true else favouriteIcon.visible = false
	}
	return false
	}
}

if ( my_config["aspectratio"] == "4x3") {
fe.add_transition_callback( this, "on_transition" )

function on_transition( ttype, var, ttime ) {
	if( ttype == Transition.ToNewSelection) {
	if ( my_config["enable_list_type"] == "List Box" ){
			gameListBoxAnimX.to = (flw + flx - crw - lbw)*1.12
			if ( glist_delay != 0 ) gameListBoxAnimX.hide( flw + flx - crw, fe.layout.time )
			gameListBoxAnimA.to = ListBoxAlpha
			if ( glist_delay != 0 ) gameListBoxAnimA.hide( 0, fe.layout.time )
			gameListBoxBackgroundAnimX.to = (flw + flx - crw - lbw)*1.12
			if ( glist_delay != 0 ) gameListBoxBackgroundAnimX.hide( flw + flx - crw, fe.layout.time )
			gameListBoxBackgroundAnimA.to = ListBoxAlpha
			if ( glist_delay != 0 ) gameListBoxBackgroundAnimA.hide( 0, fe.layout.time )
			}
		}
		
	if( ttype == Transition.EndNavigation ) {

		update_artwork = true	
		update_counter = 0
	}
	
	if( ttype == Transition.ToNewList || When.StartLayout) {
		
		update_artwork = true	
		update_counter = 0

		if ( my_config["enable_list_type"] == "List Box" ){
			gameListBoxAnimX.from = flw + flx - crw
			gameListBoxAnimX.to = (flw + flx - crw - lbw)*1.12
			gameListBoxBackgroundAnimX.from = flw + flx - crw
			gameListBoxBackgroundAnimX.to = (flw + flx - crw - lbw)*1.12
		}
			categoryAnimX.from = categoryX + category.msg_width * 0.5 + categoryLeft.msg_width * 0.5 + categoryGap
			categoryAnimX.to = categoryX
			categoryRightAnimA.from = 0
			categoryRightAnimA.to = ListBoxAlpha
			categoryRight2AnimA.from = 0.01
			categoryRight2AnimA.to = 0
			categoryLeft2AnimA.from = ListBoxAlpha
			categoryLeft2AnimA.to = 0

		if ( glist_delay != 0 ) gameListBoxAnimX.hide( flw + flx - crw, fe.layout.time )
		gameListBoxAnimA.from = 0
		gameListBoxAnimA.to = ListBoxAlpha
		if ( glist_delay != 0 ) gameListBoxAnimA.hide( 0, fe.layout.time )
		if ( glist_delay != 0 ) gameListBoxBackgroundAnimX.hide( flw + flx - crw, fe.layout.time )
		gameListBoxBackgroundAnimA.from = 0
		gameListBoxBackgroundAnimA.to = ListBoxAlpha
		if ( glist_delay != 0 ) gameListBoxBackgroundAnimA.hide( 0, fe.layout.time )
		
		if ( var < 0 ) {
			if ( my_config["enable_list_type"] == "List Box" ){
			gameListBoxAnimX.from = flw + flx - crw
			gameListBoxAnimX.to = (flw + flx - crw - lbw)*1.12
			gameListBoxBackgroundAnimX.from = flw + flx - crw
			gameListBoxBackgroundAnimX.to = (flw + flx - crw - lbw)*1.12
			}
			categoryAnimX.from = categoryX - category.msg_width * 0.5 - categoryRight.msg_width * 0.5 - categoryGap
			categoryAnimX.to = categoryX
			categoryLeftAnimA.from = 0
			categoryLeftAnimA.to = 255
			categoryLeft2AnimA.from = 0.01
			categoryLeft2AnimA.to = 0
			categoryRight2AnimA.from = 255
			categoryRight2AnimA.to = 0
		}
		
		if ( var > 0 ) {
			if ( my_config["enable_list_type"] == "List Box" ){
			gameListBoxAnimX.from = flw + flx - crw
			gameListBoxAnimX.to = (flw + flx - crw - lbw)*1.12
			gameListBoxBackgroundAnimX.from = flw + flx - crw
			gameListBoxBackgroundAnimX.to = (flw + flx - crw - lbw)*1.12
			}
			categoryAnimX.from = categoryX + category.msg_width * 0.5 + categoryLeft.msg_width * 0.5 + categoryGap
			categoryAnimX.to = categoryX
			categoryRightAnimA.from = 0
			categoryRightAnimA.to = ListBoxAlpha
			categoryRight2AnimA.from = 0.01
			categoryRight2AnimA.to = 0
			categoryLeft2AnimA.from = ListBoxAlpha
			categoryLeft2AnimA.to = 0
		}

		categoryLeftAnimX.from = categoryAnimX.from - category.msg_width / 2 - categoryLeft.msg_width / 2 - categoryGap
		categoryLeftAnimX.to = categoryAnimX.to - category.msg_width / 2 - categoryLeft.msg_width / 2 - categoryGap
		categoryRightAnimX.from = categoryAnimX.from + category.msg_width / 2 + categoryRight.msg_width / 2 + categoryGap
		categoryRightAnimX.to = categoryAnimX.to + category.msg_width / 2 + categoryRight.msg_width / 2 + categoryGap

		categoryLeft2AnimX.from = categoryLeftAnimX.from - categoryLeft.msg_width / 2 - categoryLeft2.msg_width / 2 - categoryGap
		categoryLeft2AnimX.to = categoryLeftAnimX.to - categoryLeft.msg_width / 2 - categoryLeft2.msg_width / 2 - categoryGap
		categoryRight2AnimX.from = categoryRightAnimX.from + categoryRight.msg_width / 2 + categoryRight2.msg_width / 2 + categoryGap
		categoryRight2AnimX.to = categoryRightAnimX.to + categoryRight.msg_width / 2 + categoryRight2.msg_width / 2 + categoryGap
	}
	
	if( ttype == Transition.ToNewSelection || Transition.ToNewList) {
		if (fe.game_info(Info.Favourite, var) == "1") favouriteIcon.visible = true else favouriteIcon.visible = false
	}
	return false
	}
}



////////////////
//Sound effects
////////////
if ( my_config["soundeffects"] == "On" ){
function fade_transitions( ttype, var, ttime ) {
 switch ( ttype ) {
  case Transition.ToNewSelection:
//  case Transition.ToNewList:
	local Wheelclick = fe.add_sound("Click.mp3")
	      Wheelclick.playing=true
  break;
  case Transition.ToGame:
  case Transition.ToNewList:
	local Wheelclick = fe.add_sound("selection.mp3")
	      Wheelclick.playing=true
  break;
  }
 return false;
}

fe.add_transition_callback( "fade_transitions" );
}

local flx = fe.layout.width;
local fly = fe.layout.height;
local flw = fe.layout.width;
local flh = fe.layout.height;

local layout_width = fe.layout.width
local layout_height = fe.layout.height
if ( my_config["enable_tutorial"] == "On" ){
//
// Tutorial Module
//


local image_bg = fe.add_image( "white.png", flx*0.3, fly*0.1, lbw, (flh - bth - bbh)*1.1 ); 

image_bg.set_rgb(0,0,0)
image_bg.alpha = 200;
image_bg.visible=true;

local logo = fe.add_image( "logo.png", flx*0.295, fly*0.08, flw*0.3, flh*0.1);
logo.preserve_aspect_ratio = true;
logo.visible=true;

local text = fe.add_text("Welcome to HyperPie2. To make the most out of your HyperPie2 experience, you need to set up your button assignment correct in the Attract Mode Configuration Menu. Press TAB on your keyboard to enter the Configuration Menu, then select Controls. Firstly, set controls for Up, Down, Left and Right. Make sure the default action for Left and Right is Previous Filter and Next Filter. Next, set buttons for Back, Select, Toggle Layout, Custom1 and Custom2. The Toggle Layout button is used to select between different HyperPie2 theme layouts. The button you assign to Custom1 will enter the search game dialogue in the selected system. Custom2 will hide the game description text. The Game Descriptions feature can also be permanently disabled in the Display Options for any of the system with the HP2-Systems-Menu layout. To disable it, enter the Configuration Menu, select Displays and go to Displays Menu Options. Within the Displays Menu Options set the Startup Tutorial option to Off. We hope you enjoy HyperPie2. To keep up to date about HyperPie2, make sure you join the Project HyperPie group on Facebook and our forum. HyperPie2 is free and is to be distributed without any proprietary software. Press Right to toggle this tutorial on and off until permanently disabled in the Displays Options. Have fun!", flx*0.32, fly*0.155, flw*0.26, flh*0.7);
text.font = "AEH.ttf"
text.charsize = flx*0.01;
text.align = Align.Left;
text.word_wrap = true;
text.alpha = 255;
text.visible=true;


fe.add_signal_handler(this, "on_signalinfo");
function on_signalinfo(signal) {
	if ( signal == "right" ){
		if ( image_bg.visible==true ) {
			image_bg.visible=false;
			text.visible=false;
			logo.visible=false;

		} else {
			image_bg.visible=true;
			text.visible=true;
			logo.visible=true;
		}
		return true;
	}
	return false;
}
}
//View name
if ( my_config["ViewNamePopup"] == "On" ){
local mfliter2W = (flw - crw - bbm - floor( bbh * 2.875 ))
local mfliter2H = floor( bbh * 0.15 )

 ::OBJECTS <- {

mfliter = fe.add_text( "Main Menu", 0, gameListEntryY*0.7, flx, flh*0.04 ),
mfliter2 = fe.add_text( "Listbox View", flx*0.007, fly*0.02, flx*0.3, flh*0.015 ),
}

OBJECTS.mfliter.align = Align.Left;
OBJECTS.mfliter.set_rgb(titRGB[0],titRGB[1],titRGB[2])
OBJECTS.mfliter.alpha = 0;
OBJECTS.mfliter.style = Style.Regular
OBJECTS.mfliter.font = "BebasNeueBold.otf"
OBJECTS.mfliter2.charsize = (floor(OBJECTS.mfliter2.height * 1000/700))
OBJECTS.mfliter2.style = Style.Regular
OBJECTS.mfliter2.font = flh <= 600 ? "BebasNeueRegular.otf": "BebasNeueBook.otf"
OBJECTS.mfliter2.align = Align.Left;

 
 local movein_msysfliter = {
   when =  Transition.StartLayout, property = "alpha", start = 50, end = 255, time = 2000
}

 local moveout_msysfliter = {
    when = Transition.StartLayout ,property = "alpha", start = 255, end = 0, time = 1000, delay = 2000
}

animation.add( PropertyAnimation( OBJECTS.mfliter, movein_msysfliter ) );
animation.add( PropertyAnimation( OBJECTS.mfliter, moveout_msysfliter ) );
animation.add( PropertyAnimation( OBJECTS.mfliter2, movein_msysfliter ) );
animation.add( PropertyAnimation( OBJECTS.mfliter2, moveout_msysfliter ) );
}


/////////////////////
// Videotheme
/////////////////////
if ( my_config["Videotheme"] != "Off" ){
	if ( my_config["Videotheme"] == "Videotheme" ){
::OBJECTS <- {
artwork_videotheme_bg = fe.add_artwork("white.png", 0, 0 flw, flh),	
artwork_videotheme = fe.add_artwork("videotheme", 0, 0 flw, flh),
	}
}

if ( my_config["Videotheme"] == "Snap" ){
::OBJECTS <- {
artwork_videotheme_bg = fe.add_artwork("white.png", 0, 0 flw, flh),	
artwork_videotheme = fe.add_artwork("snap", 0, 0 flw, flh),
	}
}

OBJECTS.artwork_videotheme.trigger = Transition.EndNavigation;
OBJECTS.artwork_videotheme_bg.visible=false;
OBJECTS.artwork_videotheme.visible=false;
OBJECTS.artwork_videotheme.video_flags = Vid.NoAudio;
OBJECTS.artwork_videotheme_bg.set_rgb(lbgRGB[0],lbgRGB[1],lbgRGB[2])
OBJECTS.artwork_videotheme.preserve_aspect_ratio = true;

local settings = {
   delay_timer = 0,
   play_delay = 5000,
   stop_play = 10000,
}


function on_transition_videotheme(ttype, var, transition_time) {


    if ( ttype == Transition.StartLayout || ttype == Transition.ToNewList || ttype == Transition.ToNewSelection ) {
		OBJECTS.artwork_videotheme.trigger = Transition.EndNavigation;
        OBJECTS.artwork_videotheme.video_flags = Vid.NoAutoStart;
        settings.delay_timer = fe.layout.time;
		OBJECTS.artwork_videotheme_bg.visible=false;
        OBJECTS.artwork_videotheme.visible=false;	
        
    }
    return false
}

function on_tick_videotheme(tick_time) {
   if ( !OBJECTS.artwork_videotheme.video_playing && tick_time - settings.delay_timer >= settings.play_delay ) {		
        OBJECTS.artwork_videotheme.trigger = Transition.EndNavigation;
		OBJECTS.artwork_videotheme.video_playing = true;
        OBJECTS.artwork_videotheme_bg.visible=true;
		OBJECTS.artwork_videotheme.visible=true;
		OBJECTS.artwork_videotheme.video_flags = Vid.NoAudio;
		
		
        
        OBJECTS.artwork_videotheme.alpha = 0;
        local alpha_artwork_videotheme_0 = {
        property = "alpha", start = 0 end = 255, time = 2000 easing = Easing.Out,
        }
 
        animation.add( PropertyAnimation( OBJECTS.artwork_videotheme, alpha_artwork_videotheme_0 ) );
       animation.add( PropertyAnimation( OBJECTS.artwork_videotheme_bg, alpha_artwork_videotheme_0 ) );
    }
    
    else if ( tick_time - settings.delay_timer >= settings.stop_play ) {
        
        OBJECTS.artwork_videotheme.alpha = 255;
        local alpha_artwork_videotheme = {
        property = "alpha", start = 255 end = 0, time = 6000 tween = Tween.Linear,
        }
 
        animation.add( PropertyAnimation( OBJECTS.artwork_videotheme, alpha_artwork_videotheme ) );
		animation.add( PropertyAnimation( OBJECTS.artwork_videotheme_bg, alpha_artwork_videotheme ) );
       
    }
   
}
fe.add_ticks_callback(this, "on_tick_videotheme");
fe.add_transition_callback(this, "on_transition_videotheme");

}

//Vintage effect
if ( my_config["vintage_screen"] == "On") {
local vintage = fe.add_image("vintage.jpg", 0, 0, flw, flh)
vintage.alpha = 100;
}