//////////////////////////////////////////////////////////////////////////////////////////
// Title:  System info layout v1.0b
// Description:  A system information display/layout for attract mode
// Author:  Steve Sherrod
// Last updated: 05/17/17
// This file is to be distributed freely, for non-commercial use only. Part of project 
// HyperPie
//
// Go ahead and use this code in your project, but please at least give credit and shout
// out team HP!. Thanks :)
//////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////////////
// Load modules
//////////////////////////////////////////////////////////////////////////////////////////
fe.load_module( "animate" );
fe.load_module( "fade" );
fe.load_module( "file" );

//////////////////////////////////////////////////////////////////////////////////////////
// Begin layout configuration xml
//////////////////////////////////////////////////////////////////////////////////////////
class UserConfig {
</ label="--------  System Info layout  --------", help="Show or hide additional images", order=1 /> uct1="select below";
</ label="Select background image", help="Select theme background image to use", options="default", order=2 /> enable_bg="default";   
</ label="Device 1", help="First drive to show in storage", order=3 /> device1="/";   
</ label="Device 2", help="Second drive to show in storage", order=4 /> device2="/home/pi/addonusb";   
</ label="Device 3", help="Third drive to show in storage", order=5 /> device3="/boot";   
}

//////////////////////////////////////////////////////////////////////////////////////////
// Begin layout initialization
//////////////////////////////////////////////////////////////////////////////////////////
local my_config = fe.get_config();

local flx = fe.layout.width;
local fly = fe.layout.height;
local flw = fe.layout.width;
local flh = fe.layout.height;
fe.layout.font="roboto.TTF";

local version = "1.0b";
//////////////////////////////////////////////////////////////////////////////////////////
// Load specific backround image
//////////////////////////////////////////////////////////////////////////////////////////
local bgStorage = fe.add_image( "images//Storage.png", 0, 0, flw, flh );
bgStorage.preserve_aspect_ratio=false;
bgStorage.alpha = 255;

local bgSystem = fe.add_image( "images//System.png", 0, 0, flw, flh );
bgSystem.preserve_aspect_ratio=false;
bgSystem.alpha = 255;

//////////////////////////////////////////////////////////////////////////////////////////
// Initialize information text/labels
//////////////////////////////////////////////////////////////////////////////////////////
local txtSystem = fe.add_text( "System", flw*0.2, fly*0.038, flw*18, flh*0.040 );
local txtDate = fe.add_text( "Date: ", flw*0.22, fly*0.088, flw*10, flh*0.028 );
local txtTime = fe.add_text( "Time: ", flw*0.22, fly*0.118, flw*10, flh*0.028 );
local txtUpTime = fe.add_text( "Up Time: ", flw*0.22, fly*0.148, flw*10, flh*0.028 );
local txtOSInfo = fe.add_text( "OS: ", flw*0.22, fly*0.178, flw*10, flh*0.028 );
local txtKernel = fe.add_text( "Kernel: ", flw*0.22, fly*0.208, flw*10, flh*0.028 );
local txtTotalMem = fe.add_text( "RAM Total: ", flw*0.22, fly*0.238, flw*10, flh*0.028 );
local txtFreeMem = fe.add_text( "RAM Free: ", flw*0.22, fly*0.268, flw*10, flh*0.028 );
local txtNumProcs = fe.add_text( "Running Tasks: ", flw*0.22, fly*0.298, flw*10, flh*0.028 );
//----------------------
local txtHardware = fe.add_text( "Hardware", flw*0.2, fly*0.328, flw*18, flh*0.040 );
local txtCPUTemp = fe.add_text( "CPU Temp: ", flw*0.22, fly*0.378, flw*10, flh*0.028 );
local txtCPUSpeed = fe.add_text( "CPU Speed: ", flw*0.22, fly*0.408, flw*10, flh*0.028 );
local txtCPUHWModel = fe.add_text( "CPU HW Model: ", flw*0.22, fly*0.438, flw*10, flh*0.028 );
local txtCPUModel = fe.add_text( "CPU Model: ", flw*0.22, fly*0.468, flw*10, flh*0.028 );
//----------------------
local txtNetwork = fe.add_text( "Network", flw*0.2, fly*0.498, flw*18, flh*0.040 );
local txtHostname = fe.add_text( "IP Address: ", flw*0.22, fly*0.548, flw*10, flh*0.028 );
local txtIPAddress = fe.add_text( "Hostname: ", flw*0.22, fly*0.578, flw*10, flh*0.028 );
local txtMACAddy = fe.add_text( "Mac Address: ", flw*0.22, fly*0.608, flw*10, flh*0.028 );
//----------------------
local txtStorage = fe.add_text( "Storage", flw*0.2, fly*0.638, flw*18, flh*0.040 );
local txtStorageLabels = fe.add_text( "Filesystem\tSize\tUsed\tAvail\tUsed%\tMounted on", flw*0.22, fly*0.688, flw*10, flh*0.028  );
local txtDevice1 = fe.add_text( "", flw*0.22, fly*0.718, flw*10, flh*0.028  );
local txtDevice2 = fe.add_text( "", flw*0.22, fly*0.748, flw*10, flh*0.028  );
local txtDevice3 = fe.add_text( "", flw*0.22, fly*0.778, flw*10, flh*0.028  );
local txtVersionInfo = fe.add_text( "sysinfo version " +  version, flw*0.87, fly*0.042, flw*12, flh*0.020 );
local txtAMVersion = fe.add_text( "Attract Mode " + FeVersion, flw*0.2, fly*0.038, flw*18, flh*0.040 );
//////////////////////////////////////////////////////////////////////////////////////////
// Setup the left-most navigation listbox and info/text
//////////////////////////////////////////////////////////////////////////////////////////
local lbMenu = fe.add_listbox( flx*0.0150, fly*0.001, flw*0.165, flh*0.800 );

lbMenu.rows = 13;
lbMenu.bg_alpha = 0;
lbMenu.align = Align.Centre ;
lbMenu.sel_style = Style.Bold;
lbMenu.font="roboto.TTF";
lbMenu.charsize = 24;
lbMenu.set_selbg_rgb( 0, 0, 255 );
lbMenu.set_sel_rgb( 0, 0, 0 );
lbMenu.sel_style = Style.Bold;

//////////////////////////////////////////////////////////////////////////////////////////
// Setup information/panel text/labels
//////////////////////////////////////////////////////////////////////////////////////////

txtSystem.alpha = 255;
txtSystem.align = Align.Left;

txtDate.alpha = 255;
txtDate.align = Align.Left;
txtDate.word_wrap = true;

txtTime.alpha = 255;
txtTime.align = Align.Left;
txtTime.word_wrap = true;


txtUpTime.alpha = 255;
txtUpTime.align = Align.Left;
txtUpTime.word_wrap = true;

txtCPUTemp.alpha = 255;
txtCPUTemp.align = Align.Left;
txtCPUTemp.word_wrap = true;

txtCPUSpeed.alpha = 255;
txtCPUSpeed.align = Align.Left;
txtCPUSpeed.word_wrap = true;

txtOSInfo.alpha = 255;
txtOSInfo.align = Align.Left;
txtOSInfo.word_wrap = true;

txtIPAddress.alpha = 255;
txtIPAddress.align = Align.Left;
txtIPAddress.word_wrap = true;

txtCPUModel.alpha = 255;
txtCPUModel.align = Align.Left;
txtCPUModel.word_wrap = true;

txtCPUHWModel.alpha = 255;
txtCPUHWModel.align = Align.Left;
txtCPUHWModel.word_wrap = true;

txtKernel.alpha = 255;
txtKernel.align = Align.Left;
txtKernel.word_wrap = true;

txtHostname.alpha = 255;
txtHostname.align = Align.Left;
txtHostname.word_wrap = true;

txtFreeMem.alpha = 255;
txtFreeMem.align = Align.Left;
txtFreeMem.word_wrap = true;

txtTotalMem.alpha = 255;
txtTotalMem.align = Align.Left;
txtTotalMem.word_wrap = true;

txtHardware.alpha = 255;
txtHardware.align = Align.Left;
txtHardware.word_wrap = true;

txtNetwork.alpha = 255;
txtNetwork.align = Align.Left;
txtNetwork.word_wrap = true;

txtMACAddy.alpha = 255;
txtMACAddy.align = Align.Left;
txtMACAddy.word_wrap = true;

txtStorage.alpha = 255;
txtStorage.align = Align.Left;
txtStorage.word_wrap = true;

txtStorageLabels.alpha = 255;
txtStorageLabels.align = Align.Left;
txtStorageLabels.word_wrap = true;

txtNumProcs.alpha = 255;
txtNumProcs.align = Align.Left;
txtNumProcs.word_wrap = true;

txtDevice1.alpha = 255;
txtDevice1.align = Align.Left;
txtDevice1.word_wrap = false;

txtDevice2.alpha = 255;
txtDevice2.align = Align.Left;
txtDevice2.word_wrap = false;

txtDevice3.alpha = 255;
txtDevice3.align = Align.Left;
txtDevice3.word_wrap = false;

txtVersionInfo.alpha = 255;
txtVersionInfo.align = Align.Left;
txtVersionInfo.word_wrap = false;

//////////////////////////////////////////////////////////////////////////////////////////
// Generic plugin callback function
//////////////////////////////////////////////////////////////////////////////////////////

local output="";
function PluginSysInfoRet(StrRet)
{
	output += rstrip(StrRet) + "\n";
	local substrings = split(output, "||");

	local strPrefix = substrings[0];
	
	if (strPrefix == "sysinfo"){
		//we're parsing system info, populate the apprpriate labels accordingly
		txtDate.msg = "Date: " + substrings[1];
		txtTime.msg = "Time: " + substrings[2];
		txtUpTime.msg = "Uptime: " + substrings[3];
		txtCPUTemp.msg = "CPU Temp: " + substrings[4];
		txtOSInfo.msg = "OS: " + substrings[5];
		txtCPUSpeed.msg = "CPU Speed: " + substrings[6];
		txtIPAddress.msg = "IP Address: " + substrings[7];
		txtMACAddy.msg = "MAC Address: " + substrings[15];
		txtCPUModel.msg = "CPU Model: " + substrings[8];
		txtCPUHWModel.msg = "CPU Hardware: " + substrings[9];
		txtKernel.msg = "Kernel: " + substrings[10];
		txtHostname.msg = "Hostname: " + substrings[11];
		txtTotalMem.msg = "RAM Total: " + substrings[12];
		txtFreeMem.msg = "RAM Free: " + substrings[13];
		txtNumProcs.msg = "Running Tasks:" + substrings[14];
		txtDevice1.msg = "";
		txtDevice2.msg = "";
		txtDevice3.msg = "";
	}
	
	output=""
};

fe.plugin_command( "python", "/home/pi/pyscripts/system-info.py -i", "PluginSysInfoRet" );

//////////////////////////////////////////////////////////////////////////////////////////
// Generic plugin callback function
//////////////////////////////////////////////////////////////////////////////////////////

local output="";
function PluginStorageInfoRet(StrRet)
{
	output += rstrip(StrRet) + "\n";
	local substrings = split(output, "||");

	local strPrefix = substrings[0];
	
	//ignore everything before "||"
	local strSuffix = substrings[1];

	if (strPrefix == "devinfo"){
		//we're parsing storage info, populate the apprpriate labels accordingly
		local drvinfo = split(strSuffix, "!!");
		
		txtDevice1.msg = drvinfo[1];
		txtDevice2.msg = drvinfo[2];
		txtDevice3.msg = drvinfo[3];
		//'dummy' drive (formatted string sent to layout by our script, so the drives will line up)
		txtStorageLabels.msg = drvinfo[0];
	}
	
	output=""
};

//fe.plugin_command( "python", "/home/pi/.attract/layouts/system-info/system-info.py -s", "PluginStorageInfoRet" )

//////////////////////////////////////////////////////////////////////////////////////////
// System info tick callback
//////////////////////////////////////////////////////////////////////////////////////////
local ii = 0;
local rr = 0;
function update_sysinfo( tick_time )
{
	ii+= 1;
	if (ii >= 600){
		fe.plugin_command( "python", "/home/pi/.attract/layouts/system-info/system-info.py -i", "PluginSysInfoRet" );
		 
		ii = 0;
	} 
}
fe.add_ticks_callback(this, "update_sysinfo");

//////////////////////////////////////////////////////////////////////////////////////////
// Storage info tick callback
//////////////////////////////////////////////////////////////////////////////////////////
local ii = 0;
local rr = 0;

local device1 = my_config["device1"];
local device2 = my_config["device2"];
local device3 = my_config["device3"];

function update_storageinfo( tick_time )
{
	ii+= 1;
	if (ii >= 600){
		fe.plugin_command( "python", ("/home/pi/.attract/layouts/system-info/system-info.py -s " + device1 + "," + device2 + "," + device3), "PluginStorageInfoRet" );
		 
		ii = 0;
	} 
}
fe.add_ticks_callback(this, "update_storageinfo")

//////////////////////////////////////////////////////////////////////////////////////////
// Listbox transition callback
//////////////////////////////////////////////////////////////////////////////////////////
function lbMenuTransition( ttype, var, transition_time )
{
	if (ttype == Transition.ToNewSelection || ttype == Transition.FromOldSelection){
		txtSystem.msg = "[Title]";

		//not sure what I plan to do here yet. Perhaps include an AM plugin feature...
		
	}

   return false;
}
fe.add_transition_callback( "lbMenuTransition" );