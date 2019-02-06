///////////////////////////////////////////////////
//
// Attract-Mode Frontend - Control Menu plugin
//
///////////////////////////////////////////////////
//
// Define use configurable settings
//

const OPT_HELP="The text to show in the menu for this item";
const CMD_HELP="The command to run when this item is selected.  Use @<script_name.nut> to run a squirrel script that is located in the Utility Menu's plugin directory.";

class UserConfig </ help="Calls a Attract Mode Control Menu for Arcade Setups with limited buttons " /> {
	</ label="Control", help="The control to press to display the Attract Mode Control Menu", is_input=true, order=1 />
	button="U";
}

local config=fe.get_config();
local my_dir = fe.script_dir;
local items = [];

const MAX_OUTPUT_LINES = 40;

fe.load_module( "submenu" );

class AnyCommandOutput extends SubMenu
{
	m_t = "";

	constructor()
	{
		base.constructor();
		m_t = fe.add_text( "", 0, 0, fe.layout.width, fe.layout.height );
		m_t.charsize=fe.layout.height / MAX_OUTPUT_LINES;
		m_t.align=Align.Left;
		m_t.word_wrap=true;
		m_t.bg_alpha=180;
		m_t.visible = false;
	}

	function on_show() { m_t.visible = true; }
	function on_hide() { m_t.visible = false; }
	function on_scroll_up() { m_t.first_line_hint--; }
	function on_scroll_down() { m_t.first_line_hint++; }

	function show_output( msg )
	{
		m_t.msg = msg;
		m_t.first_line_hint=0;

		show( true );
	}
};
fe.plugin[ "Attract Mode Control Menu" ] <- AnyCommandOutput();

//
// Load the menu with the necessary commands
//


items.append("Choose Emulator");
items.append("Configure System");
items.append("Display Filters");
items.append("Add/Remove Favorites");
items.append("Power Off");

//
// Add a cancel/back option
//
items.append( "Back" );

//
// Create a tick function that tests if the configured button is pressed and runs
// the corresponding script or command if it is.
//
fe.add_ticks_callback( "control_menu_plugin_tick" );

function control_menu_plugin_tick( ttime )
{
	if ( fe.get_input_state( config["button"] ) )
	{
		
		local res = fe.overlay.list_dialog( items, "Options Menu", items.len() / 2 );
		if ( res < 0)
			return;

		if (res ==2) {
			fe.signal("filters_menu");

		} else if (res ==3) {
			fe.signal("add_favourite");

		} else if (res ==0) {
			fe.signal("displays_menu");
		} else if (res ==1) {
			fe.signal("configure");
		} else if (res ==4) {
			fe.signal("exit_no_menu");
		}
	}
}
