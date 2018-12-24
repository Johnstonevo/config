///////////////////////////////////////////////////
//         _       _    __                         
//        | |     | |  / _|                        
//   _ __ | | __ _| |_| |_ ___  _ __ _ __ ___  ___ 
//  | '_ \| |/ _` | __|  _/ _ \| '__| '_ ` _ \/ __|
//  | |_) | | (_| | |_| || (_) | |  | | | | | \__ \
//  | .__/|_|\__,_|\__|_| \___/|_|  |_| |_| |_|___/
//  | |                                            
//  |_|                          Plug In           
///////////////////////////////////////////////////
// Enable/Disable Platforms Plug in Config         
//										 _  _  _ 
//										| || || |
///////////////////////////////////////////////////				| || || |
//										| || || |
///////////////////////////////////////////////////                         	|_||_||_|
fe.load_module( "file" );				  //			(_)(_)(_)
// Place your 'romlists' path here.
local romlists_dir = "\\arcade\\attract\\romlists\\"; 
local root_category = "";				//             must have the "//" [ex: if in C:/romlists	
//								       needs to be C://romlists//
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class UserConfig </ help="Plug in to assist with back signal when categorizing Displays Menu. " /> {
	</ label="Platforms/Nested", help="Enable/Disable *.nut when categorizing displays (Arcade Machines, Consoles, etc.).", options="Enable,Disable", order=00 /> enable_platforms="Enable";
	
}
local config=fe.get_config();
local my_dir = fe.script_dir;

function assign_dir()
config["list_dir"] = romlists_dir;
 
//System placeholder arrays (Categorys)
local Arcade Machines = [];
local Computers = [];
local Consoles = [];
local Pinballs = [];
local Handhelds = [];
local Arcade Classics = [];
///////////////////////////////////////////////////

class TXTFile
{
    lines = null;
    constructor( lines )
    {
        this.lines = lines;
    }
}

function readFile( filename )
{
	local lines = [];
	local f = ReadTextFile( filename );
	local pos = 0;
	while ( !f.eos() )
	{
		//read each line
		lines.push(f.read_line());
	}
	return lines;
}


function loadFile( filename )
{
	local lines = readFile( filename );
	return TXTFile( lines );
}

///////////////////////////////////////////////////
//This function parses all of the systems and
//stores them in the appropriate array (Category)
///////////////////////////////////////////////////
function parse_systems(CategoryName)
{
	local filename = romlists_dir + CategoryName + ".txt";
	local tmpBuffer = loadFile(filename);
	print ("Gathering systems from " + CategoryName  + ".txt\r\n");
	foreach( line in tmpBuffer.lines )
	{
		local Sysname = split(line, ";")[0];
		//TODO maybe add some sort of duplicate prevention
		switch (CategoryName){
			
			case ("Arcade Machines"):
				foreach( line in tmpBuffer.lines )
				{
					Arcade Machines.append(Sysname);
				}
				break;
			case ("Computers"):
				foreach( line in tmpBuffer.lines )
				{
					Computers.append(Sysname);
				}
				break;
			case ("Consoles"):	
				foreach( line in tmpBuffer.lines )
				{
					Consoles.append(Sysname);
				}
				break;
			case ("Arcade Classics"):
				foreach( line in tmpBuffer.lines )
				{
					Arcade Classics.append(Sysname);
				}
				break;
			case ("Pinballs"):
				foreach( line in tmpBuffer.lines )
				{
					Pinballs.append(Sysname);
				}
				break;
			case ("Handhelds"):
				foreach( line in tmpBuffer.lines )
				{
					Handhelds.append(Sysname);
				}
				break;
		}
	}
}
///////////////////////////////////////////////////
//This function gets the appropriate category for
//a given system
///////////////////////////////////////////////////
function get_category(SystemName){

	//Loop through all the systems in each category, compare with SystemName, if it matches then return the category
	for (local i = 0 ; i < Arcade Machines.len() ; ++i) {
		
		if (SystemName == Arcade Machines[i]){
			return "Arcade Machines";
		}
	}

	for (local i = 0 ; i < Computers.len() ; ++i) {
		
		if (SystemName == Computers[i]){
			return "Computers";
		}
	}

	for (local i = 0 ; i < Consoles.len() ; ++i) {
		
		if (SystemName == Consoles[i]){
			return "Consoles";
		}
	}

	for (local i = 0 ; i < Pinballs.len() ; ++i) {
		
		if (SystemName == Pinballs[i]){
			return "Pinballs";
		}
	}

	for (local i = 0 ; i < Handhelds.len() ; ++i) {
		
		if (SystemName == Handhelds[i]){
			return "Handhelds";
		}
	}

	for (local i = 0 ; i < Arcade Classics.len() ; ++i) {
		
		if (SystemName == Arcade Classics[i]){
			return "Arcade Classics";
		}
	}
return "Displays Menu";
}

///////////////////////////////////////////////////
//Jump to the specified display
///////////////////////////////////////////////////
function load_display_name(name) {
   foreach( idx, display in fe.displays )
      if ( name == fe.displays[idx].name && name != fe.displays[fe.list.display_index].name ) fe.set_display(idx)
	}

fe.add_signal_handler(this, "on_signal");
function on_signal ( sig )
{
	if ( sig == "back" )
   {
	load_display_name(root_category);
	} else {
		return false;
	}
}

if ( config["enable_platforms"] == "Enable")
{
	
	print("parsing categorys\r\n");
	parse_systems("Arcade Machines");
	parse_systems("Consoles");
	parse_systems("Computers");
	parse_systems("Pinballs");
	parse_systems("Handhelds");
	parse_systems("Arcade Classics");
	print("Categories parsed\r\n");
	
	function transition_callback(ttype, var, ttime)
	{
		if (ttype == Transition.ToNewList){
			local currDisplayName = fe.list.name;
			print("current display = " + currDisplayName + "\r\n")
			root_category = get_category(currDisplayName);
			print("root category = " + root_category + "\r\n")
		}
	}
fe.add_transition_callback("transition_callback" );
}
