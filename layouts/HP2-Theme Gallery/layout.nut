///////////////////////////////////////////////////
//
// Attract-Mode Frontend - Grid layout
//
///////////////////////////////////////////////////
class UserConfig </ help="Navigation controls: Up/Down (to move up and down) and Page Up/Page Down (to move left and right)" />{

      </ label="Red (R) (0-255) Color", help="Value of red component for theme color", order=1 />
	  red = 147;
	  
      </ label="Green (G) (0-255) Color", help="Value of green component for theme color", order=2 />
	  green = 3;
	  
      </ label="Blue (B) (0-255) Color", help="Value of blue component for theme color", order=3 />
	  blue = 3;
	  
      </ label="BG Artwork", help="Select Background Artwork", options="image,video", order=4 />
	  select_bgArt = "image";

      </ label="Mode of BG Image", help="For BG artwork image only", options="static,animated", order=5 />
	  bgImage_mode = "animated";	
	  
      </ label="Grid Artwork", help="The artwork to display in the grid", options="snap,flyer", order=7 />
	  art = "flyer";		
	  
      </ label="Idle Timeout", help="If no selection is made in amount of seconds, then automatically go back to home menu. 0 to disable", order=8 />
	  rtime = 60;
	  
      </ label="Transition Time", help="The amount of time (in milliseconds) that it takes to scroll to another grid entry", order=9 />
	  ttime = "200";

      </ label="Page Jumps", help="Value of page size", order=10 />
	  pages = 50;	
	  		  
}

fe.load_module("conveyor");
fe.load_module("animate");

fe.layout.width = 1280;
fe.layout.height = 720;
local flw = fe.layout.width;
local flh = fe.layout.height;
fe.layout.preserve_aspect_ratio = true;

local my_config = fe.get_config();
local rows = 2;
local cols = 4;
local height = ( fe.layout.height * 11 / 12 ) / rows.tofloat();
local width = fe.layout.width / cols.tofloat();
local vert_flow = true;

// Convert user-supplied values to integers (because one might enter "cow" or
// anything, really, for a value, we need to sanitize by assuming positive 0).
local bgRed = abs(("0"+my_config["red"]).tointeger()) % 255;
local bgGreen = abs(("0"+my_config["green"]).tointeger()) % 255;
local bgBlue = abs(("0"+my_config["blue"]).tointeger()) % 255;
local pageSize = abs(("0"+my_config["pages"]).tointeger());
local user_interval = abs(("0"+my_config["rtime"]).tointeger());
local selsound_enabled = true;

local count = user_interval;
local last_time = 0;

local bgArt;
local bgArt2;

if ( my_config["select_bgArt"] == "image" ){
	bgArt = fe.add_image("bg.jpg", 0, 0, flw, flh );

	if ( my_config["bgImage_mode"] == "animated" ){

		bgArt2 = fe.add_clone(bgArt);

		//Animation for image bg
			animation.add( PropertyAnimation( bgArt, {when = Transition.StartLayout, property = "x", start = 0, end = -flw, time = 28000, loop=true}));
			animation.add( PropertyAnimation( bgArt2, {when = Transition.StartLayout, property = "x", start = flw, end = 0, time = 28000, loop=true}));			
			animation.add( PropertyAnimation( bgArt2, {when = Transition.StartLayout, property = "alpha", start = 0, end = 255, time = 500}));
	}
}
		

else if ( my_config["select_bgArt"] == "video" ){
	bgArt = fe.add_image("bg.mp4", 0, 0, flw, flh );
}

animation.add( PropertyAnimation( bgArt, {when = Transition.StartLayout, property = "alpha", start = 0, end = 255, time = 500}));

local scanline = fe.add_artwork("scanline.png", 1, 0, flw + 1, flh );

local topBar = fe.add_image("white.png",0, 0, flw + 1, 25 )
topBar.set_rgb( bgRed, bgGreen, bgBlue );

local bottomBar = fe.add_image("white.png",0, 680, flw + 1, 40 )
bottomBar.set_rgb( bgRed, bgGreen, bgBlue );

local bottomBarBlack = fe.add_image("white.png", 175, 682, 930, 36 )
bottomBarBlack.set_rgb( 0, 0, 0 );

const PAD=4;

function nameyear(offset) {
	local name = fe.game_info(Info.Title, offset);
	local year = fe.game_info(Info.Year, offset);
	if ((name.len() > 0) && (year.len() > 0))
		return name + " (" + year + ")";
	return name;
}

class Grid extends Conveyor
{
	snap_t=null;
	frame=null;
	fav_t=null;
	name_t=null;	
	sel_x=0;
	sel_y=0;
    
    	ui_counter=null;
    	ui_time=null;
    	ui_banner=null;
    	ui_displayname=null;
    	ui_filter_a=null;
    	ui_filter_b=null;   
    	ui_filters=[];
    
	constructor()
	{	
		fe.add_transition_callback( this, "favorite_setting" );
		base.constructor();

		sel_x = cols / 2;
		sel_y = rows / 2;
		stride = fe.layout.page_size = vert_flow ? rows : cols;
			
		try {
            transition_ms = my_config["ttime"].tointeger();
		} catch (e) {
			transition_ms = 220;
		}        
	}
    
    function create_layout(slots)
    {
	//Create list		
        set_slots(slots, get_sel()); //set grid slots

	//Setup Art
        snap_t = fe.add_artwork("snap", 700, 55, 300, 300);
	snap_t.trigger = Transition.EndNavigation;

        frame = fe.add_image("frame.png", width * 2, height * 2, width - 6, height - 17);

	fav_t = fe.add_image("fav.png", 190, 684, 20, 20);
	fav_t.visible = false;        

        name_t = fe.add_text("[!nameyear]", 190, 677, 900, 35);
        name_t.font = "gunshipbold";
        name_t.set_rgb( 220, 220, 220 );

	animation.add( PropertyAnimation( snap_t,   {when = Transition.EndNavigation, property = "alpha", start = 0, end = 255, time = 1000}));
	animation.add( PropertyAnimation( frame,    {when = Transition.EndNavigation, property = "alpha", start = 0, end = 255, time = 100}));

        ui_banner = fe.add_image("banner.png", -300, 65, 280, 70);





        local topBarLine = fe.add_image("white.png", 0, 25, flw, 1);
        topBarLine.set_rgb(160, 160, 160);
        
		if (user_interval != 0)
			ui_time = fe.add_image("time.png", 1380, 26, 110, 25);
      
        ui_displayname = fe.add_image ("systems/[DisplayName]",-305, 67, 90, 67 );
        ui_displayname.preserve_aspect_ratio = true;

   
        
		if (user_interval != 0) {
			ui_counter = fe.add_text(count, 1420, 24, 100, 25);
			ui_counter.align = Align.Left;
			ui_counter.set_rgb(30, 30, 30);
			ui_counter.font = "gunshipbold";
		}
		


        local statusmsg = fe.add_text("Please Select A Theme To Download", 140, -10, 1000, 30);
        statusmsg.font="gunshipbold";	
        
        ::OBJECTS <- {
            msg = statusmsg,
            arrowL = fe.add_image("arrowL.png", 140, 687, 25, 25),
            arrowR = fe.add_image("arrowR.png", 1115, 687, 25, 25),
        }
        
		//Setup animations
		local move_banner = {when = Transition.StartLayout, property = "x", start = -480, end = 0, time = 800};
		
		
		
		animation.add( PropertyAnimation( ui_banner, move_banner ) );
	

		if (user_interval != 0) {
			animation.add( PropertyAnimation( ui_time,    {when = Transition.StartLayout, property = "x", start = 1380, end = 1180, time = 700}));	
			animation.add( PropertyAnimation( ui_counter, {when = Transition.StartLayout, property = "x", start = 1380, end = 1220, time = 700}));
		}
		
		animation.add( PropertyAnimation( ui_displayname, move_banner ) );
		animation.add( PropertyAnimation( OBJECTS.msg,    {when = Transition.StartLayout, property = "alpha", start = 10, end = 255, time = 1200, tween = Tween.Linear, pulse = true}));
		animation.add( PropertyAnimation( OBJECTS.arrowL, {when = Transition.StartLayout, property = "x", start = 130, end = 140, time = 600, loop = true}));
		animation.add( PropertyAnimation( OBJECTS.arrowR, {when = Transition.StartLayout,	property = "x",	start = 1125, end = 1115, time = 600, loop = true}));
		animation.add( PropertyAnimation( name_t,         {when = Transition.EndNavigation, property = "y", start = 707, end = 676, time = 80}));
		animation.add( PropertyAnimation( name_t,         {when = Transition.EndNavigation, property = "alpha", start = 0, end = 255, time = 100}));
		animation.add( PropertyAnimation( fav_t, 	  {when = Transition.StartLayout, property = "scale", start = 2, end = 1, time = 1200, loop = true}));

					
		//Render & Setup Events
       		update_frame(false);
		fe.add_signal_handler(this, "on_signal");
		if (user_interval != 0)
			fe.add_ticks_callback(this, "on_tick");        
    }
	
	function update_frame(audio=true)
	{
		snap_t.x = width * sel_x + 10;
		snap_t.y = fe.layout.height / 19 + height * sel_y;

		frame.x = width * sel_x + 3;
		frame.y = fe.layout.height / 23 + height * sel_y;		
				
		local newoffset = get_sel() - selection_index;
		snap_t.index_offset = newoffset;
		fav_t.index_offset = newoffset;
		name_t.index_offset = newoffset;
		set_favorite();
					
        //reset timeout
		if (user_interval != 0) {
			count = user_interval;
			ui_counter.msg = count;
		}
    }

	function set_favorite()
	{

		local m = fe.game_info(Info.Favourite, fav_t.index_offset);
		
		if (m == "1")
			fav_t.visible  = true;
		else
			fav_t.visible  = false;
	}

	// set favorite icon during after game transition
	function favorite_setting(ttype, var, ttime)
	{
		switch ( ttype )
		{
			case Transition.ToNewList:
			case Transition.StartLayout:
			case Transition.FromOldSelection: // set the favorite icon
			{
				this.set_favorite();
			}
		}
			
		return false;
	}	


	function move_sound() {
			local selectMusic = fe.add_sound("select.mp3");
			selectMusic.playing=true;
	}

	function move_sound2() {
			local selectMusic = fe.add_sound("page.mp3");
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
			fe.layout.page_size = pageSize;

			if ( vert_flow && ( sel_y > 0 ) )
			{
				sel_y--;				
				update_frame();
				move_sound();		
			}
			else
			{
				transition_swap_point=0.0;
				do_correction();				
				fe.signal( "prev_page" );
				move_sound2();							
			}	
			return true;

		case "down":
			fe.layout.page_size = pageSize;

			if ( vert_flow && ( sel_y < rows - 1 ))
			{
				sel_y++;				
				update_frame();	
				move_sound();						
			}
			else
			{
				transition_swap_point=0.0;
				do_correction();
				fe.signal( "next_page" );
				move_sound2();
								
			}
			return true;

		case "left":
			fe.layout.page_size = vert_flow ? rows : cols;	

			if ( vert_flow && ( sel_x > 0 ))
			{
				sel_x--;
				update_frame();
				move_sound();			
			}
			else if ( !vert_flow && ( sel_y > 0 ) )
			{
				sel_y --;
				update_frame();
				move_sound();
			}
			else
			{
				transition_swap_point=0.0;
				do_correction();
				fe.signal( "prev_page" );				
			}
			return true;

		case "right":
			fe.layout.page_size = vert_flow ? rows : cols;
			
			if ( vert_flow && ( sel_x < cols - 1 ) )
			{
				sel_x++;
				update_frame();
				move_sound();			
			}
			else if ( !vert_flow && ( sel_y < rows - 1 ) )
			{
				sel_y++;
				update_frame();
				move_sound();
			}
			else
			{
				transition_swap_point=0.0;
				do_correction();
				fe.signal( "next_page" );
			}
			return true;

		case "exit":
		case "exit_no_menu":
			break;
						
		case "select":
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

	function on_transition( ttype, var, ttime )
	{
		switch ( ttype )
		{
		case Transition.EndNavigation:			
			snap_t.visible = true;
			frame.visible = true;
			selsound_enabled = true;							
		break;

		case Transition.ToNewSelection:
			snap_t.visible = false;
			frame.visible = false;
			selsound_enabled = false;
		break;
				
                case Transition.ToNewList:
				//Update filter highlight
                for ( local i = 0; i < ui_filters.len(); i++ )
                    ui_filters[i].set_rgb(240, 240, 240);
                    ui_filters[fe.list.filter_index].set_rgb(212, 165, 33);
		local selectMusic = fe.add_sound("filter.mp3");
			selectMusic.playing=true;
                break;
		}
		return base.on_transition( ttype, var, ttime );
	}
    
    
    function on_tick( stime )
    {
        // Update on-screen timer every 1 seconds
        if ( stime - last_time > 1000) {
            count--;	
            ui_counter.msg = count;
            last_time = stime;
        }
        
        // If timer expired, go back to home system menu
        if ( count <= 0 ) {
            fe.signal( "displays_menu" );
        }    
    }
}

class MySlot extends ConveyorSlot
{
	m_num = 0;
	m_art = null;
	m_shadow = null;
        m_grid = null;
	m_offset = 10;

	constructor( num, grid )
	{
		m_num = num;
        m_grid = grid;
		
		local x = width - 7 * PAD;
		local y = height - 9 * PAD;
		
		m_art = fe.add_artwork(my_config["art"], 0, 0, x, y);
		m_art.preserve_aspect_ratio = true; 
		m_art.video_flags = Vid.NoAudio;
		
				
		base.constructor();
	}

	function on_progress( progress, var )
	{
        local r = m_num % rows;
        local c = m_num / rows;

        if ( abs( var ) < rows )
        {
            m_art.x = c * width + PAD + 10;
            m_art.y = fe.layout.height / 24
                + ( fe.layout.height * 11 / 12 ) * ( progress * cols - c ) + PAD + 6;
        }
        else
        {
            local prog = m_grid.transition_progress;
            if ( prog > m_grid.transition_swap_point )
            {
                if ( var > 0 ) c++;
                else c--;
            }

            if ( var > 0 ) prog *= -1;

            m_art.x = ( c + prog ) * width + PAD + 10;
            m_art.y = fe.layout.height / 24 + r * height + PAD + 6;
        }
		
		if (m_shadow) {
			m_shadow.x = m_art.x + m_offset;
			m_shadow.y = m_art.y + m_offset;
		}			
	}

	function swap( other )
	{
		m_art.swap( other.m_art );
		
		if (m_shadow) {
			m_shadow.swap( other.m_shadow );
		}				
	}

	function set_index_offset( io )
	{
		m_art.index_offset = io;
		
		if (m_shadow) {
			m_shadow.index_offset = io;
		}	
	}

	function reset_index_offset()
	{
		m_art.rawset_index_offset( m_base_io );
		
		if (m_shadow) {
			m_shadow.rawset_index_offset( m_base_io );
		}	
	}

	function set_alpha( alpha )
	{
		m_art.alpha = alpha; 
	}	
}

::gridc <- Grid();
local my_array = [];
	for (local i = 0; i < rows * cols; i++)
		my_array.push(MySlot(i, gridc));
		gridc.create_layout(my_array);

local page2 = fe.add_image("page.png", 1160, 667, 110, 28);