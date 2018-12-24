////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// HyperPie 2 theme by Carl
// https://www.facebook.com/groups/1158678304181964/
//
// This theme borrows heavily from Oomeks Silky theme.
//  
////////////////////////////////////////////////////////////////////////////////////////////////////////   

class UserConfig {
	</ label="HYPERPIE2 SYSTEMS MENU OPTIONS", help="Brought to you by Project HyperPie", order=1 /> uct1=" ";
//	</ label="Warning! Dont change these options", help="Changing these options might break the oher views. Instead assign a button to Toggle Layout in the control options for predefined views", order=2 /> uct2="";
	</ label=" ", help="Brought to you by Project HyperPie", order=2 /> uct100=" ";
	
	</ label="GENERAL SETTINGS", help="Brought to you by Project HyperPie", order=3 /> uct3=" ";	

    </ label="Custom Video or Backgroun Music", help="Disable Video Sound", options="Per Title, Per Display,No", order=6, per_display="true" /> enable_backgroundmusic="No";
	</ label="Monitor Aspect Ratio", help="Select Monitor Aspect Ratio", options="16x9,4x3", order=6 /> aspectratio="16x9";
	</ label="Hardware Selection", help="Select Your Hardware", options="RPi,PC", order=6 /> hardware="RPi";	
	</ label="Search Key", help="Choose the key to initiate a search", options="custom1,custom2,custom3,custom4,custom5,custom6,up,down,left,right", order=10 /> user_search_key="custom1";
    </ label="Search Results", help="Choose the search method", options="show_results,next_match", order=11 /> user_search_method="show_results";
	</ label="Title", help="Enable Title", options="Yes, No", order=12, per_display="true" /> enable_title="Yes";
	</ label="Enable Flyer Art", help="Enable Flyer Art", options="Yes,No", order=14, per_display="true" /> enable_bigart3="Yes";
	</ label="Sound Effects", help="Disable or enable sound effects", options="On,Off", order=8 /> soundeffects="Off";
	</ label="Fade to Fullscreen Video", help="Disable or enable fade to fullscreen video", options="Off, Videotheme, Snap", order=8, per_display="true" /> Videotheme="Off";
	</ label=" ", help="Brought to you by Project HyperPie", order=17 /> uct4=" ";


	</ label="WHEEL OPTIONS", help="Brought to you by Project HyperPie", order=18 /> uct5=" ";   
	</ label="Wheel Art Folder", help="The artwork to spin", options="wheel, marquee, flyer, fanart, cartart, boxart", order=20, per_display="true" /> orbit_art="wheel";
	</ label="Wheel Transition Time", help="Time in milliseconds for wheel spin.", order=21, per_display="true" /> transition_ms="100";  
	</ label="Wheel Fade Time", help="Time in milliseconds to fade the wheel.", options="Off,2500,5000,7500,10000,12500,15000,17500,20000,22500,25000,27500,30000", order=22, per_display="true" /> wheel_fade_ms="2500";
   	</ label="List Box Rows", help="How many games to display on the List Box", options="11,13,15,17,19,21,23,25,27,29,31", order=23, per_display="true" /> rows="19";
	</ label="List Box and Wheel Background Hide", help="Time in seconds after which game list hides\n0 disables auto hide", options="Off,2500,5000,7500,10000,12500,15000,17500,20000,22500,25000,27500,30000", order=24, per_display="true" /> glautohide="2500";	
	</ label="List Box and Wheel Background Opacity", help="Set List Box Opacity. 255 is equal to no opacity", options="0,100,200,255", order=24, per_display="true" /> ListBoxOpacity="255";	
	</ label=" ", help="Brought to you by Project HyperPie", order=25 /> uct6=" ";	
	
	</ label="GAME/SYSTEM INFO", help="Show or hide system name", order=26 /> uct7=" ";
	</ label="Fade System/Game Title", help="Show System and Category Name", options="Yes, No", order=27, per_display="true" /> fadeWheelTitle="No";
	</ label="Enable Game Description", help="Enable Game Description", options="On,Off", order=28, per_display="true" /> select_description="Off";
	</ label=" ", help="Brought to you by Project HyperPie", order=29 /> uct8=" ";	

	</ label="COLOUR OPTIONS", help="Brought to you by Project HyperPie", order=30 /> uct9=" ";	
	</ label="Custom Background Color as R,G,B", help="( 0-255 values allowed )\nSets the colour of accent elements.\nLeave blank if you want the colour from the randomized to be stored permanently.", option="0", order=30, per_display="true" /> backrgb="150,0,0";	
	</ label="Border Overlay Color as R,G,B", help="( 0-255 values allowed )\nSets the colour of background elements.\nLeave blank if you want the colour from the randomized to be stored permanently.", option="0", order=31, per_display="true" /> bgrgb="0,0,0"
	</ label="List Box Background Color as R,G,B", help="( 0-255 values allowed )\nSets the colour of background elements.\nLeave blank if you want the colour from the randomized to be stored permanently.", option="0", order=32, per_display="true" /> lbgrgb="0,0,30"
	</ label="Category text color as R,G,B", help="( 0-255 values allowed )\nSets the colour of accent elements.\nLeave blank if you want the colour from the randomized to be stored permanently.", option="0", order=35, per_display="true" /> selrgb="255,255,255"
	</ label="Title color as R,G,B", help="( 0-255 values allowed )\nSets the colour of accent elements.\nLeave blank if you want the colour from the randomized to be stored permanently.", option="0", order=36, per_display="true" /> titrgb="255,255,255" 
	</ label="Game Selection Bar Color as R,G,B", help="( 0-255 values allowed )\nSets the colour of accent elements.\nLeave blank if you want the colour from the randomized to be stored permanently.", option="0", order=37, per_display="true" /> gslrgb="0,102,102" 
	</ label="Year and Manufacturer as R,G,B", help="( 0-255 values allowed )\nSets the colour of accent elements.\nLeave blank if you want the colour from the randomized to be stored permanently.", option="0", order=38, per_display="true" /> pldrgb="254,255,255"  
	</ label=" ", help="Brought to you by Project HyperPie", order=39 /> uct10=" ";	
	

	  
 </ label="CART ART OPTIONS", help="Show or hide additional images", order=54 /> uct15=" "
   </ label="Enable Cart Art", help="Enable Cart Art", options="Yes,No", order=55, per_display="true" /> enable_bigart="Yes";
   </ label="Select Cart Art Folder", help="Select Cart Art Folder", options="wheel, marquee, flyer, fanart, boxart, cartart", order=56, per_display="true" /> select_bigartfolder="cartart";
   </ label="Enable Cart Art Spin for CDs", help="Enable Cart Art Spin", options="Yes,No", order=57, per_display="true" /> enable_bigartspin="No";
   </ label="Enable Cart Art Fade on Selection", help="Enable Cart Art Fade on Selection", options="Yes,No", order=57, per_display="true" /> enable_bigartfade="Yes";
   </ label="Enable Cart Art Fade on Load", help="Enable Cart Art Fade on Load", options="Yes,No", order=58, per_display="true" /> enable_bigartfadeonload="No"; 
   </ label="Enable Cart Art Scale on Selection", help="Enable Cart Art Scale on Selection", options="Yes,No", order=59, per_display="true" /> enable_bigartscale="No"; 
   </ label="Enable Cart Art Scale on Load", help="Enable Cart Art Scale on Load", options="Yes,No", order=60, per_display="true" /> enable_bigartscaleonload="No"; 
   </ label="Enable Cart Art Rotate on Selection", help="Enable Cart Art Rotate on Selection", options="Yes,No", order=61, per_display="true" /> enable_bigartrotate="No";
   </ label="Enable Cart Art Rotate on Load", help="Enable Cart Art Rotate on Load", options="Yes,No", order=62, per_display="true" /> enable_bigartrotateonload="Yes";	 
   </ label="Enable Cart Art Fly-in on Selection", help="Enable Cart Art Fly-in on Selection", options="Yes,No", order=63, per_display="true" /> enable_bigartflyin="Yes";
	</ label=" ", help="Brought to you by Project HyperPie", order=64 /> uct16=" ";      
   
</ label="BOX ART OPTIONS", help="Show or hide additional images", order=65 /> uct17=" ";
   </ label="Enable Box Art", help="Enable Box Art", options="Yes,No", order=66, per_display="true" /> enable_bigart2="Yes";
   </ label="Select Box Art Foldert", help="Select Box Art Folder", options="wheel, marquee, flyer, fanart, boxart, cartart", order=67, per_display="true" /> select_bigartfolder2="boxart";
   </ label="Enable Box Art Fade on Selection", help="Enable Box Wheel Art Fade on Selection", options="Yes,No", order=68, per_display="true" /> enable_bigartfade2="Yes";
   </ label="Enable Box Art Fade on Load", help="Enable Box Art Fade on Load", options="Yes,No", order=69, per_display="true" /> enable_bigartfadeonload2="No"; 
   </ label="Enable Box Art Scale on Selection", help="Enable Box Art Scale on Selection", options="Yes,No", order=70, per_display="true" /> enable_bigartscale2="No"; 
   </ label="Enable Box Art Scale on Load", help="Enable Box Art Scale on Load", options="Yes,No", order=71, per_display="true" /> enable_bigartscaleonload2="No"; 
   </ label="Enable Box Art Rotate on Selection", help="Enable Box Art Rotate on Selection", options="Yes,No", order=72, per_display="true" /> enable_bigartrotate2="No";
   </ label="Enable Box Art Rotate on Load", help="Enable Box Art Rotate on Load", options="Yes,No", order=73, per_display="true" /> enable_bigartrotateonload2="Yes";
   </ label="Enable Box Art Fly-in on Selection", help="Enable Box Art Fly-in on Selection", options="Yes,No", order=74, per_display="true" /> enable_bigartflyin2="Yes";
   	</ label=" ", help="Brought to you by Project HyperPie", order=75 /> uct18=" ";    
   
</ label="RIGHT SIDE ART OPTIONS", help="Show or hide additional images", order=80 /> uct50=" ";
   </ label="Select Right Side Art Folder", help="Select Box Art Folder", options="flyer, boxart, cartart, marquee, wheel, fanart, back", order=81, per_display="true" /> select_bigartfolder3="flyer";
}  



// Check if the AM version supporting .nomargin property is running
local am_version_check = fe.add_text("", 0, 0, 0, 0)
try{ am_version_check.nomargin = true }catch(e){	while (!fe.overlay.splash_message( "You are running an older version of Attract Mode.\nPlease update to the latest nightly build.")){} return }
am_version_check.visible = false

// modules
fe.load_module("fade");
fe.load_module("animate");
fe.load_module( "pan-and-scan-hp" );
fe.do_nut("nuts/ryb2rgb.nut")
fe.do_nut("nuts/animate.nut")
fe.do_nut("nuts/genre.nut")
fe.load_module("objects/keyboard-search")

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

if( my_config["backrgb"] != "" ) {
	try { backRGB = split(my_config["backrgb"], ",").map(function(value) return value.tointeger()) }
	catch(e) { error_message = true}
}

if ( error_message || bgRGB.len() != 3 ||  lbgRGB.len() != 3 ||  selRGB.len() != 3 || titRGB.len() != 3 || gslRGB.len() != 3 || pldRGB.len() != 3 || backRGB.len() != 3)
	while (!fe.overlay.splash_message( "Background or Accent colour has a wrong format.\nPlease check it in Layout Options")){} 


//for fading of the wheel
first_tick <- 0;
stop_fading <- true;
wheel_fade_ms <- 0;
try {	wheel_fade_ms = my_config["wheel_fade_ms"].tointeger(); } catch ( e ) { }

glist_delay <- 0;
try {	glist_delay = my_config["glautohide"].tointeger(); } catch ( e ) { }

////////////////
////////////////
//Background Music
////////////
local bgMusic = fe.add_sound("")
if ( my_config["enable_backgroundmusic"] == "Per Title" ) {

function bgmusic_transitions( ttype, var, ttime ) {
 switch ( ttype ) {
  case Transition.FromOldSelection:
  			bgMusic.playing=false
			bgMusic.file_name = "../../music/"+fe.game_info(Info.Title)+".mp3"
            bgMusic.playing=true
            bgMusic.loop=true
  break;
  case Transition.ToGame:
  case Transition.StartLayout:
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
if ( my_config["enable_backgroundmusic"] == "Per Display" ) {
function bgmusic_transitions( ttype, var, ttime ) {
 switch ( ttype ) {

  case Transition.ToNewList:
			bgMusic.file_name = "../../music/"+fe.list.name+".mp3"
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

local bgart = fe.add_image( "backgrounds/[DisplayName]", 0, 0, flw, flh);



/////////////////////
//Video
/////////////////////

if ( my_config["aspectratio"] == "16x9") {
local blackscreen = fe.add_image( "black.png", flx*0.1, fly*0.26, flw*0.35, flh*0.5 );


local snap = FadeArt( "snap", flx*0.148, fly*0.27, flw*0.27, flh*0.4);
snap.trigger = Transition.EndNavigation;
snap.preserve_aspect_ratio = true;
	
}

///////////////////////////////////////////////

if ( my_config["aspectratio"] == "4x3") {


local snap = FadeArt( "snap", flx*0.2, fly*0.3, flw*0.47, flh*0.42);
snap.trigger = Transition.EndNavigation;
snap.preserve_aspect_ratio = true;

}


//////////////////
///Flyer Art Animation
//////////////////
if ( my_config["aspectratio"] == "16x9") {
if ( my_config["enable_bigart3"] == "Yes" ){

local flx = ( fe.layout.width - layout_width ) / 2
local fly = ( fe.layout.height - layout_height ) / 2
local flyer = fe.add_artwork(( my_config["select_bigartfolder3"] ),flw + flx - crw - flyerW, bth, flyerW, flyerH );
flyer.preserve_aspect_ratio = true
flyer.trigger = Transition.EndNavigation;
local flyerfade = {
    when = Transition.ToNewSelection,
	property = "alpha",
	start = 255,
	end = 0,
	time = 1,
	pulse = false
	loop = false
 }
 
  local flyerfadeback = {
    when = Transition.EndNavigation,
	property = "alpha",
	start = 0,
	end = 255,
	time = 500,
	pulse = false
	loop = false
	delay = 500
 }
 
animation.add( PropertyAnimation ( flyer, flyerfade ) );
animation.add( PropertyAnimation ( flyer, flyerfadeback ) );
}
local flx = fe.layout.width;
local fly = fe.layout.height;
}


////////////////////////////////////////////////

if ( my_config["aspectratio"] == "4x3") {
if ( my_config["enable_bigart3"] == "Yes" ){

local flx = ( fe.layout.width - layout_width ) / 2
local fly = ( fe.layout.height - layout_height ) / 2
local flyer = FadeArt(( my_config["select_bigartfolder3"] ),(flw + flx - crw - flyerW)*1.135, bth*1.5, flyerW*0.8, flyerH*0.8 );
flyer.preserve_aspect_ratio = true

local flx = fe.layout.width;
local fly = fe.layout.height;
}
}

////////////////////////////////////////////////////
//Border
////////////////////////////////////////////////////

local border = fe.add_image( "borders/[DisplayName]", 0, 0, flw, flh);

/////////////////////////////
// Bottom Background Overlay
/////////////////////////////

local flx = ( fe.layout.width - layout_width ) / 2
local fly = ( fe.layout.height - layout_height ) / 2
local bannerBottom = fe.add_image( "white.png", flx, flh - bbh, flw, bbh)
bannerBottom.set_rgb( bgRGB[0], bgRGB[1], bgRGB[2] )
bannerBottom.alpha=150;
local flx = fe.layout.width;
local fly = fe.layout.height;

/////////////////////////////////////////////////////
// Box Art Animation
///////////////////////////////////////////////////////////////////////////

if ( my_config["enable_bigart2"] == "Yes" ){
local bigart = fe.add_artwork(( my_config["select_bigartfolder2"] ), flx*0.6, fly*0.5, flw*0.16, flh*0.36);
bigart.preserve_aspect_ratio = true;
bigart.trigger = Transition.EndNavigation;

local bigart_rotate_onload = {
    when = When.StartLayout,
    when = Transition.ToNewList,
    property = "rotation",
    start = 90,
    end = 0,
    time = 750,
    tween = Tween.Expo
    loop=false
 }

if ( my_config["enable_bigartrotateonload2"] == "Yes" ){
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
	start = 0,
	end = 255,
	time = 500,
	pulse = false
	loop = false
 }

if ( my_config["enable_bigartscaleonload2"] == "Yes" ){
animation.add( PropertyAnimation ( bigart, bigartscale_onload ) );
}
if ( my_config["enable_bigartfadeonload2"] == "Yes" ){
animation.add( PropertyAnimation ( bigart, bigartfade_onload ) );
}

local bigartscale = {
    when = Transition.EndNavigation,
    property = "scale",
    start = 1.2,
    end = 1.0,
    time = 500	
    tween = Tween.Quad,
	pulse = false
//	delay = 500
	
}

local bigartx = {
    when = Transition.EndNavigation,
    property = "y",
    start = fly*1.0
    end = fly*0.5
    time = 500,
    tween = Tween.Expo
	pulse = false
	delay = 500
 }
 
local bigartskew_x = {
    when = Transition.EndNavigation,
	property = "skew_x",
	start = 255,
    end = 0,
	time = 500,
	loop = false
	pulse = false
 }
 
local bigartfade = {
    when = Transition.ToNewSelection,
	property = "alpha",
	start = 255,
	end = 0,
	time = 1,
	pulse = false
	loop = false
 }
 
  local bigartfadeback = {
    when = Transition.EndNavigation,
	property = "alpha",
	start = 0,
	end = 255,
	time = 1,
	pulse = false
	loop = false
	delay = 500
 }
local bigartrotate = {
    when = Transition.EndNavigation,
    property = "rotation",
    start = 90,
    end = 0,
    time = 750,
    tween = Tween.Expo
    loop=false
 }
 
 
//Animation

if ( my_config["enable_bigartrotate2"] == "Yes" ){
animation.add( PropertyAnimation ( bigart, bigartrotate ) );
}
if ( my_config["enable_bigartscale2"] == "Yes" ){
animation.add( PropertyAnimation ( bigart, bigartscale ) );
}
if ( my_config["enable_bigartflyin2"] == "Yes" ){
animation.add( PropertyAnimation ( bigart, bigartx ) );
//animation.add( PropertyAnimation ( bigart, bigartskew_x ) );
}
if ( my_config["enable_bigartfade2"] == "Yes" ){
animation.add( PropertyAnimation ( bigart, bigartfade ) );
animation.add( PropertyAnimation ( bigart, bigartfadeback ) );
}
}


//////////////////
///Cart Art Animation
//////////////////

/////////////////////////////////////////////////////

if ( my_config["enable_bigart"] == "Yes" ){
local bigart = fe.add_artwork(( my_config["select_bigartfolder"] ), flx*0.48, fly*0.6, flw*0.15, flh*0.25);
bigart.preserve_aspect_ratio = true;
bigart.trigger = Transition.EndNavigation;

local bigart_rotate_onload = {
    when = When.StartLayout,
    when = Transition.ToNewList,
    property = "rotation",
    start = 90,
    end = 0,
    time = 750,
    tween = Tween.Expo
    loop=false
 }

if ( my_config["enable_bigartrotateonload"] == "Yes" ){
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
	start = 0,
	end = 255,
	time = 500,
	pulse = false
	loop = false
 }


 
if ( my_config["enable_bigartscaleonload"] == "Yes" ){
animation.add( PropertyAnimation ( bigart, bigartscale_onload ) );
}
if ( my_config["enable_bigartfadeonload"] == "Yes" ){
animation.add( PropertyAnimation ( bigart, bigartfade_onload ) );
}

local bigartscale = {
    when = Transition.EndNavigation,
    property = "scale",
    start = 1.2,
    end = 1.0,
    time = 500	
    tween = Tween.Quad,
	pulse = false
//	delay = 500
	
}

local bigartx = {
    when = Transition.EndNavigation,
    property = "y",
    start = fly*1.0
    end = fly*0.6
    time = 500,
    tween = Tween.Expo
	pulse = false
	delay = 500
 }  
 
local bigartskew_x = {
    when = Transition.EndNavigation,
	property = "skew_x",
	start = 255,
    end = 0,
	time = 500,
	loop = false
	pulse = false
 } 
 
local bigartfade = {
    when = Transition.ToNewSelection,
	property = "alpha",
	start = 255,
	end = 0,
	time = 1,
	pulse = false
	loop = false
 }
 
 local bigartfadeback = {
    when = Transition.EndNavigation,
	property = "alpha",
	start = 0,
	end = 255,
	time = 1,
	pulse = false
	loop = false
	delay = 500
 }
local bigartrotate = {
    when = Transition.EndNavigation,
    property = "rotation",
    start = 90,
    end = 0,
    time = 750,
    tween = Tween.Expo
    loop=false
 }
 
local cdart_rotation = {
when = Transition.ToNewSelection ,property = "rotation", start = 0, end = 360, time = 3000, loop = true,}

local cdart_rotationLoad = {
when = When.StartLayout ,property = "rotation", start = 0, end = 360, time = 3000, loop = true
} 

if ( my_config["enable_bigartspin"] == "Yes" ){
animation.add( PropertyAnimation ( bigart, cdart_rotation ) );
animation.add( PropertyAnimation ( bigart, cdart_rotationLoad ) );
}

if ( my_config["enable_bigartrotate"] == "Yes" ){
animation.add( PropertyAnimation ( bigart, bigartrotate ) );
}
if ( my_config["enable_bigartscale"] == "Yes" ){
animation.add( PropertyAnimation ( bigart, bigartscale ) );
}
if ( my_config["enable_bigartflyin"] == "Yes" ){
animation.add( PropertyAnimation ( bigart, bigartx ) );
//animation.add( PropertyAnimation ( bigart, bigartskew_x ) );
}
if ( my_config["enable_bigartfade"] == "Yes" ){
animation.add( PropertyAnimation ( bigart, bigartfade ) );
animation.add( PropertyAnimation ( bigart, bigartfadeback ) );
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
local gameYear = fe.add_text( "[Emulator]  [!year_formatted]", flx + bbm, flh - bbm - gameYearH, gameYearW, gameYearH )
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



///////////
//Character Image
//////////
/**
if ( my_config["enable_characterimage"] == "Yes" ){
	
local characterimage = fe.add_image(( "characters/[DisplayName]"), flw*0.6, flh*0.65, flw*0.15, flh*0.15);
characterimage.alpha=255;
characterimage.preserve_aspect_ratio = true;	
}
**/
// Genre
local genreImageH = bbh - bbm * 2
local genreImageW = floor( genreImageH * 1.125 )
local genreImage = fe.add_image("images/unknown.png", flx + flw - crw - genreImageW - bbm, flh - bbh + bbm, genreImageW, genreImageH )
GenreImage(genreImage)


// Players
local bgPlayersW = floor(bbh * 0.9)
local bgPlayersH = floor(bbh * 0.15)
bgPlayersH = bgPlayersH < 12 ? 12 : bgPlayersH
local playersText = fe.add_text( "[Players]  Player(s)", flx + flw - crw - genreImageW - bgPlayersW - ceil(bbm * 1.5), flh - bgPlayersH - bbm, bgPlayersW, bgPlayersH )
playersText.set_rgb( 255, 255, 255 )
playersText.set_bg_rgb( 0, 0, 0 )
playersText.align = Align.Centre
playersText.charsize = floor( playersText.height * 1000/700 * 0.6 )
playersText.font = "BebasNeueBold.otf"


// // Play Count
local bgPlayCountW = floor(bbh * 0.9)
local bgPlayCountH = floor(bbh * 0.15)
bgPlayCountH = bgPlayCountH < 12 ? 12 : bgPlayCountH
local playCountText = fe.add_text( "Played:  [PlayedCount]", flx + flw - crw - genreImageW - bgPlayersW - bgPlayCountW - ceil(bbm * 1.5), flh - bgPlayCountH - bbm, bgPlayCountW, bgPlayCountH )
playCountText.set_rgb( 255, 255, 255 )
playCountText.set_bg_rgb( gslRGB[0], gslRGB[1], gslRGB[2] )
playCountText.align = Align.Centre
playCountText.charsize = floor(playCountText.height * 1000/700 * 0.6)
playCountText.font = "BebasNeueBold.otf"




// Wheel Image
//local wheelScale = ( flw - crw * 2 ) < flh ? flw - crw * 2 : flh
//local wheelImageW = floor( wheelScale * 0.3 )*0.9
//local wheelImageH = floor( wheelScale * 0.3 )*0.9
//local wheelImage = fe.add_artwork( "wheel" ,flx + bbm, bth - floor( wheelImageH / 2 ), wheelImageW, wheelImageH )
//wheelImage.preserve_aspect_ratio = true


//Search
local search_surface = fe.add_surface(fe.layout.width*0.49, fe.layout.height*0.65)
	search_surface.x = fe.layout.width*0.2
    search_surface.y = fe.layout.height*0.18
KeyboardSearch(search_surface).init()

/**
// Category
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
**/


// List Entry
local gameListEntryW = floor( bth * 2.5 )
local gameListEntryH = floor( bth * 0.25 )
local gameListEntryY = floor( bth / 2.0 ) - floor( gameListEntryH / 2 )
local backBar = fe.add_image(  "black.png", (flx + flw - crw - gameListEntryW)*1.13, gameListEntryY*0.9 , gameListEntryW*0.47, gameListEntryH*1.3 );
local frontBar = fe.add_image(  "white.png", (flx + flw - crw - gameListEntryW)*1.13, gameListEntryY*0.9 , gameListEntryW*0.47, gameListEntryH*1.3 );
frontBar.set_rgb(gslRGB[0],gslRGB[1],gslRGB[2])
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
	frontBar.width = (backBar.width)/(fe.list.size) * (fe.list.index+1)
	if( ttype == Transition.ToNewSelection) {

			gameListBoxAnimX.to = flw + flx - crw - lbw
			if ( glist_delay != 0 ) gameListBoxAnimX.hide( flw + flx - crw, fe.layout.time )
			gameListBoxAnimA.to = ListBoxAlpha
			if ( glist_delay != 0 ) gameListBoxAnimA.hide( 0, fe.layout.time )
			gameListBoxBackgroundAnimX.to = flw + flx - crw - lbw
			if ( glist_delay != 0 ) gameListBoxBackgroundAnimX.hide( flw + flx - crw, fe.layout.time )
			gameListBoxBackgroundAnimA.to = ListBoxAlpha
			if ( glist_delay != 0 ) gameListBoxBackgroundAnimA.hide( 0, fe.layout.time )
			
		}
		
	if( ttype == Transition.EndNavigation ) {

		update_artwork = true	
		update_counter = 0
	}
	
	if( ttype == Transition.ToNewList || When.StartLayout) {
		
		update_artwork = true	
		update_counter = 0


			gameListBoxAnimX.from = flw + flx - crw
			gameListBoxAnimX.to = flw + flx - crw - lbw
			gameListBoxBackgroundAnimX.from = flw + flx - crw
			gameListBoxBackgroundAnimX.to = flw + flx - crw - lbw



		if ( glist_delay != 0 ) gameListBoxAnimX.hide( flw + flx - crw, fe.layout.time )
		gameListBoxAnimA.from = 0
		gameListBoxAnimA.to = ListBoxAlpha
		if ( glist_delay != 0 ) gameListBoxAnimA.hide( 0, fe.layout.time )
		if ( glist_delay != 0 ) gameListBoxBackgroundAnimX.hide( flw + flx - crw, fe.layout.time )
		gameListBoxBackgroundAnimA.from = 0
		gameListBoxBackgroundAnimA.to = ListBoxAlpha
		if ( glist_delay != 0 ) gameListBoxBackgroundAnimA.hide( 0, fe.layout.time )
		
		if ( var < 0 ) {

			gameListBoxAnimX.from = flw + flx - crw
			gameListBoxAnimX.to = flw + flx - crw - lbw
			gameListBoxBackgroundAnimX.from = flw + flx - crw
			gameListBoxBackgroundAnimX.to = flw + flx - crw - lbw
			

		}
		
		if ( var > 0 ) {

			gameListBoxAnimX.from = flw + flx - crw
			gameListBoxAnimX.to = flw + flx - crw - lbw
			gameListBoxBackgroundAnimX.from = flw + flx - crw
			gameListBoxBackgroundAnimX.to = flw + flx - crw - lbw
			

		}

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
	frontBar.width = (backBar.width)/(fe.list.size) * (fe.list.index+1)
	if( ttype == Transition.ToNewSelection) {

			gameListBoxAnimX.to = (flw + flx - crw - lbw)*1.12
			if ( glist_delay != 0 ) gameListBoxAnimX.hide( flw + flx - crw, fe.layout.time )
			gameListBoxAnimA.to = ListBoxAlpha
			if ( glist_delay != 0 ) gameListBoxAnimA.hide( 0, fe.layout.time )
			gameListBoxBackgroundAnimX.to = (flw + flx - crw - lbw)*1.12
			if ( glist_delay != 0 ) gameListBoxBackgroundAnimX.hide( flw + flx - crw, fe.layout.time )
			gameListBoxBackgroundAnimA.to = ListBoxAlpha
			if ( glist_delay != 0 ) gameListBoxBackgroundAnimA.hide( 0, fe.layout.time )
			
		}
		
	if( ttype == Transition.EndNavigation ) {

		update_artwork = true	
		update_counter = 0
	}
	
	if( ttype == Transition.ToNewList || When.StartLayout) {
		
		update_artwork = true	
		update_counter = 0


			gameListBoxAnimX.from = flw + flx - crw
			gameListBoxAnimX.to = (flw + flx - crw - lbw)*1.12
			gameListBoxBackgroundAnimX.from = flw + flx - crw
			gameListBoxBackgroundAnimX.to = (flw + flx - crw - lbw)*1.12
		


		if ( glist_delay != 0 ) gameListBoxAnimX.hide( flw + flx - crw, fe.layout.time )
		gameListBoxAnimA.from = 0
		gameListBoxAnimA.to = ListBoxAlpha
		if ( glist_delay != 0 ) gameListBoxAnimA.hide( 0, fe.layout.time )
		if ( glist_delay != 0 ) gameListBoxBackgroundAnimX.hide( flw + flx - crw, fe.layout.time )
		gameListBoxBackgroundAnimA.from = 0
		gameListBoxBackgroundAnimA.to = ListBoxAlpha
		if ( glist_delay != 0 ) gameListBoxBackgroundAnimA.hide( 0, fe.layout.time )
		
		if ( var < 0 ) {

			gameListBoxAnimX.from = flw + flx - crw
			gameListBoxAnimX.to = (flw + flx - crw - lbw)*1.12
			gameListBoxBackgroundAnimX.from = flw + flx - crw
			gameListBoxBackgroundAnimX.to = (flw + flx - crw - lbw)*1.12
			

		}
		
		if ( var > 0 ) {

			gameListBoxAnimX.from = flw + flx - crw
			gameListBoxAnimX.to = (flw + flx - crw - lbw)*1.12
			gameListBoxBackgroundAnimX.from = flw + flx - crw
			gameListBoxBackgroundAnimX.to = (flw + flx - crw - lbw)*1.12
			

		}


	}
	
	if( ttype == Transition.ToNewSelection || Transition.ToNewList) {
		if (fe.game_info(Info.Favourite, var) == "1") favouriteIcon.visible = true else favouriteIcon.visible = false
	}
	return false
	}
}

local flx = fe.layout.width;
local fly = fe.layout.height;
local flw = fe.layout.width;
local flh = fe.layout.height;

local layout_width = fe.layout.width
local layout_height = fe.layout.height
	


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
}

fe.add_ticks_callback(this, "on_tick_videotheme");
fe.add_transition_callback(this, "on_transition_videotheme");




