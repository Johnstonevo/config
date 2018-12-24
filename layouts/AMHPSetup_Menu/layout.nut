///////////////////////////////////////////////////
//
// Attract-Mode Frontend - Grid Pro Home layout
//
///////////////////////////////////////////////////
class UserConfig </ help="Navigation controls: Up/Down (to move up and down) and Page Up/Page Down (to move left and right)" />{

	</ label="Rows", help="The number of grid rows", options="3,4,5,6,7,8", order=1 />
	    rows="5";

	</ label="Columns", help="The number of grid columns", options="3,4,5,6,7,8", order=2 />
	    columns="5";

 	</ label="Red (R) (0-255) Color", help="Value of red component for theme color", order=3 />
	    red=147;

     	</ label="Green (G) (0-255) Color", help="Value of green component for theme color", order=4 />
	    green=3;

      	</ label="Blue (B) (0-255) Color", help="Value of blue component for theme color", order=5 />
	    blue=3;

        </ label="Background Artwork", help="Select Background Artwork", options="image,video", order=6 /> 
            select_bgArt="image";

        </ label="Mode of BG Image", help="For BG artwork image only", options="static,animated", order=7 />
	    bgImage_mode = "animated";

	</ label="Play BGM", help="Play the Background Music", options="Yes,No", order=8 />
	    playbgm = "Yes";
	  
        </ label="Screen Saver Timeout", help="The amount of time in seconds to wait before switching to screen saver. 0 to disable", order=9 />
	     rtime = 30;	
}

fe.load_module( "conveyor" );
fe.load_module("animate");

fe.layout.width = 1280;
fe.layout.height = 720;
local flw = fe.layout.width;
local flh = fe.layout.height;
fe.layout.preserve_aspect_ratio = true;

fe.list.index = 0;

local my_config = fe.get_config();
local rows = my_config[ "rows" ].tointeger();
local cols = my_config[ "columns" ].tointeger();
local height = ( fe.layout.height * 11 / 12 ) / rows.tofloat();
local width = fe.layout.width / cols.tofloat();

local vert_flow = ( "Horizontal" != "Vertical" );

local user_interval = abs(("0"+my_config["rtime"]).tointeger());

local count = user_interval;
local last_time = 0;

local bgArt;
local bgArt2;

if ( my_config["select_bgArt"] == "image" ){
	bgArt = fe.add_image("bg.png", 0, 0, flw, flh );

	if ( my_config["bgImage_mode"] == "animated" ){

		bgArt2 = fe.add_clone(bgArt);

		//Animation for image bg
			animation.add( PropertyAnimation( bgArt, {when = Transition.StartLayout, property = "x", start = 0, end = -flw, time = 28000, loop=true}));
			animation.add( PropertyAnimation( bgArt2, {when = Transition.StartLayout, property = "x", start = flw, end = 0, time = 28000, loop=true}));			
			animation.add( PropertyAnimation( bgArt2, {when = Transition.StartLayout, property = "alpha", start = 0, end = 255, time = 500}));
	}
}		

else if ( my_config["select_bgArt"] == "video" ){
	bgArt = fe.add_artwork("bg.mp4", 0, 0, flw, flh );
}

animation.add( PropertyAnimation( bgArt, {when = Transition.StartLayout, property = "alpha", start = 0, end = 255, time = 500}));

local scanline = fe.add_artwork("scanline.png", 0, 0, flw, flh );

if ( my_config["playbgm"] == "Yes" ){
	local bgMusic = fe.add_sound("bgMusic.mp3")
	bgMusic.playing=true
	bgMusic.loop=true
}

local bgRed;
local bgGreen;
local bgBlue;

// Convert user-supplied values to integers (because one might enter "cow" or
	// anything, really, for a value, we need to sanitize by assuming positive 0).
	bgRed=abs(("0"+my_config["red"]).tointeger()) % 255;;
	bgGreen=abs(("0"+my_config["green"]).tointeger()) % 255;;
	bgBlue=abs(("0"+my_config["blue"]).tointeger()) % 255;;

const PAD=4;

class Grid extends Conveyor
{
	snap_t=null;	
	frame=null;
	name_t=null;
	sel_x=0;
	sel_y=0;

	constructor()
	{
		base.constructor();

		sel_x = cols / 2;
		sel_y = rows / 2;	
		fe.add_signal_handler( this, "on_signal" );
	}

	
	function update_frame()
	{

		gridc.snap_t.x = width * sel_x + 6;
		gridc.snap_t.y = fe.layout.height / 24 + height * sel_y;
	
		frame.x = width * sel_x + 3;
		frame.y = fe.layout.height / 26 + height * sel_y;
		animation.add( PropertyAnimation( frame,         {when = Transition.EndNavigation, property = "alpha", start = 0, end = 255, time = 100}));
	
		snap_t.index_offset = get_sel() - selection_index;

	//reset timeout
		if (user_interval != 0) {
			count = user_interval;
		}

	}

	function move_sound()
	{
		local selectMusic = fe.add_sound("select.mp3")
	     		selectMusic.playing=true;
	}

	function do_correction()
	{
		local corr = get_sel() - selection_index;
		foreach ( o in m_objs )
		{
			local idx = o.m_art.index_offset - corr;
			o.m_art.rawset_index_offset( idx );		
		}
	}

	function get_sel()
	{
		return vert_flow ? ( sel_x * rows + sel_y ) : ( sel_y * cols + sel_x );
	}

	function on_signal( sig )
	{
		switch ( sig )	
		{
		case "up":
			if ( vert_flow && ( sel_y > 0 ) )
			{
				sel_y--;
				update_frame();
				move_sound();
			}
	
			return true;

		case "down":
			if ( vert_flow && ( sel_y < rows - 1 ))
			{
				sel_y++;
				update_frame();
				move_sound();
			}
	
			return true;

		case "left":
			if ( vert_flow && ( sel_x > 0 ))
			{
				sel_x--;
				update_frame();	
				move_sound();	
			}
			return true;

		case "right":
			if ( vert_flow && ( sel_x < cols - 1 ) )
			{
				sel_x++;
				update_frame();
				move_sound();	
			}
			return true;		
		break;

		default:
			// Correct the list index if it doesn't align with
			// the game our frame is on
			//
			enabled=false; // turn conveyor off for this switch
			local frame_index = get_sel();
			fe.list.index += frame_index - selection_index;

			set_selection( frame_index );
			update_frame();
			enabled=true; // re-enable conveyor
			break;
		}

		return false;
	}

}

::gridc <- Grid();

class MySlot extends ConveyorSlot
{
	m_num = 0;
	m_art = null;


	constructor( num )
	{
		m_num = num;

	m_art = fe.add_artwork( "wheel", 100, 0,
				width - 5*PAD, height - 2.5*PAD );
		base.constructor();
	}

	function on_progress( progress, var )
	{
		if ( var == 0 )
		
			local r = m_num % rows;
			local c = m_num / rows;

		
				m_art.x = c * width + PAD + 7;
				m_art.y = fe.layout.height / 24
					+ ( fe.layout.height * 11 / 12 ) * ( progress * cols - c ) + PAD;		
	}

	function swap( other )
	{
		m_art.swap( other.m_art );
	}

	function set_index_offset( io )
	{
		m_art.index_offset = io;
	}

	function reset_index_offset()
	{
		m_art.rawset_index_offset( m_base_io );
	}

}

local my_array = [];
for ( local i=0; i<rows*cols; i++ )
	my_array.push( MySlot( i ) );

gridc.set_slots( my_array, gridc.get_sel() );

gridc.snap_t = fe.add_artwork("wheel",  width * 2, height * 2, width - 11, height - 1 );
gridc.snap_t.trigger = Transition.EndNavigation;

gridc.frame=fe.add_image( "frame.png", width * 2, height * 2, width - 5, height + 4 );

gridc.update_frame();

local move_bg = {
    when = Transition.StartLayout ,property = "alpha", start = 0, end = 255, time = 500
 }

animation.add( PropertyAnimation( bgArt, move_bg ) );

local corner = fe.add_image("corner.png", 0, 0, 100, 100 )
corner.set_rgb( bgRed, bgGreen, bgBlue );

local home = fe.add_image("home.png", 10, 8, 40, 35 )

local start = fe.add_text( "Please select wheel", 140 , 680 , 1000, 30 )

local move_scale = {
    when =Transition.StartLayout ,property = "scale", start = 4, end = 1, time = 600
 } 

local move_alpha = {
    when =Transition.StartLayout ,property = "alpha", start = 0, end = 255, time = 600
 } 

local move_start = {
    when =Transition.StartLayout ,property = "alpha", start = 10, end = 255, time = 1200, tween = Tween.Linear,  pulse = true
 } 

animation.add( PropertyAnimation( corner, move_alpha ) );
animation.add( PropertyAnimation( home, move_scale ) );
animation.add( PropertyAnimation( home, move_alpha ) );
animation.add( PropertyAnimation( start, move_start ) );

start.font="gunshipbold";


function on_tick( stime )
    {
        // Update on-screen timer every 1 seconds
        if ( stime - last_time > 1000) {
            count--;
            last_time = stime;
        }
        
        // If timer expired, go back to home system menu
        if ( count <= 0 ) {
            fe.signal( "screen_saver" );
        }    
    }

if (user_interval != 0)
	fe.add_ticks_callback( "on_tick" );