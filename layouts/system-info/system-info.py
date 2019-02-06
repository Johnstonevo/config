#!/usr/bin python
########################################################################################################
# System information retrieval script (system-info.py)
# This script grabs various information for the system it is run on for display by the parent layout
# This file is part of hyperpies extended "system-info" addon/display
# coded 04/08/2017, by Steven Sherrod
########################################################################################################

import sys, getopt, os;
import subprocess;
import math;
from time import sleep;
from datetime import datetime;
from datetime import timedelta;

strTmpBuffer = "";
now = datetime.now();

#Return the systems uptime
def GetUpTime():
	try:
		f = open( "/proc/uptime" );
		contents = f.read().split();
		f.close();
	except:
	   return "Error opening /proc/uptime"
	 
	total_seconds = float(contents[0]);
	 
	# Helper vars:
	MINUTE  = 60;
	HOUR= MINUTE * 60;
	DAY= HOUR * 24;
	 
	# Get the days, hours, etc:
	days= int( total_seconds / DAY );
	hours   = int( ( total_seconds % DAY ) / HOUR );
	minutes = int( ( total_seconds % HOUR ) / MINUTE );
	seconds = int( total_seconds % MINUTE );
	 
	# Build up the pretty string (like this: "N days, N hours, N minutes, N seconds")
	strTime = "";
	if days > 0:
		strTime += str(days) + " " + (days == 1 and "day" or "days" ) + ", ";
	if len(strTime) > 0 or hours > 0:
		strTime += str(hours) + " " + (hours == 1 and "hour" or "hours" ) + ", ";
	if len(strTime) > 0 or minutes > 0:
		strTime += str(minutes) + " " + (minutes == 1 and "minute" or "minutes" ) + ", ";
		strTime += str(seconds) + " " + (seconds == 1 and "second" or "seconds" );
	if not strTime:
		return "null;";
	return strTime;

#Return todays date
def GetDate():
	d = datetime.now().strftime('%a, %B %d, %Y');
	if not d:
		return "null;";
	return (d);

#Return the current time
def GetTime():
	d = datetime.now().strftime('%I:%M %p');
	if not d:
		return "null;";
	return (d);

#Returns the CPU temp (read from /sys/class/thermal/thermal_zone0/temp)
def GetCPUTemp():
	strOutput = subprocess.check_output(['cat', '/sys/class/thermal/thermal_zone0/temp']).strip();
	if not strOutput:
		return "null";
	return (str(int(strOutput)/1000) + "C");

#Return a description of the current operating system
def GetOSInfo():
	strOutput = subprocess.check_output(['lsb_release', '-d']).strip();
	if not strOutput:
		return "null";
	strDesc = strOutput.split(":");
	return (strDesc[1].strip());
	
#Return a description of the CPU model
def GetCPUModel():
	strOutput = subprocess.check_output(['cat', '/proc/cpuinfo']).strip();
	if not strOutput:
		return "null";
	strmodel = strOutput.split(":")[2].lstrip().split("\n")[0];
	return (strmodel);
	
#Return CPU hardware (p/n)
def GetCPUHardwareModel():
	strOutput = subprocess.check_output(['cat', '/proc/cpuinfo']).strip();
	if not strOutput:
		return "null";
	strhwmodel = strOutput.split("BCM")[1].lstrip().split("\n")[0];
	return ("BCM" + strhwmodel);
	
#Return the current CPU speed in MHz
def GetCPUSpeedMHz():
	strOutput = subprocess.check_output(['cat', '/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq']).strip();
	if not strOutput:
		return "null";
	return (str(int(strOutput.strip())/1000) + "MHz");
	
#Return current clock speed
def GetCPUClock():
	strOutput = subprocess.check_output(['lsb_release', '-d']).strip();
	if not strOutput:
		return "null";
	strDesc = strOutput.split(":");
	return (strDesc[1].strip());
	
#Return the current network IP Address via ifconfig
def GetIPAddress():
	try:
		strOutput = subprocess.check_output(['ifconfig', 'eth0']).strip();
		stripaddress = str(strOutput.split("inet addr:")[1]).split(" ")[0].strip();
		return (stripaddress);
	except: #failed to get the ip from ifconfig using eth0, try wlan0..
		try:
			strOutput = subprocess.check_output(['ifconfig', 'wlan0']).strip();
			stripaddress = str(strOutput.split("inet addr:")[1]).split(" ")[0].strip();
			return (stripaddress);
		except:
			return ("N/A");
	return ("127.0.0.1");
	
#Return the HW Mac Address via ifconfig
def GetMacAddress():
	strOutput = subprocess.check_output(['ifconfig', '-a']).strip();
	if not strOutput:
		return "null";
	stripaddress = str(strOutput.split("HWaddr ")[1]).split(" ")[0].strip();
	if (stripaddress == ""):
		return "N/A";
	return (stripaddress);
		
#Return the current kernel version
def GetKernelVersion():
	strOutput = subprocess.check_output(['uname', '-r']).split("\n")[0];
	if not strOutput:
		return "null";
	return (strOutput);

#Return the current hostname
def GetHostName():
	strOutput = subprocess.check_output(['uname', '-n']).split("\n")[0];
	return (strOutput);

#Return total RAM
def GetTotalMem():
	strOutput = subprocess.check_output(['vmstat', '-s']).split("\n")[0].lstrip().split(" ")[0];
	if not strOutput:
		return "null";
	strOutput = str(int(strOutput) / 1024);
	return (strOutput + "MB");

#Return free RAM
def GetFreeMem():
	strOutput = subprocess.check_output(['vmstat', '-s']).split("\n")[4].lstrip().split(" ")[0];
	if not strOutput:
		return "null";
	strOutput = str(int(strOutput) / 1024);
	return (strOutput + "MB");
	
#Return number of running processes
def GetNumProcs():
	procs = subprocess.check_output(['ps', 'aux']).split("\n");
	if not procs:
		return "null";
	numprocs = str(len(procs));
	return (numprocs);
	
def BytesToActualSize(size_bytes):
   if (size_bytes == 0):
       return '0B';
   size_name = ("B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB");
   i = int(math.floor(math.log(size_bytes, 1024)));
   p = math.pow(1024, i);
   s = round(size_bytes/p, 2);
   return '%s %s' % (s, size_name[i]);

#Return number of running processes
def GetStorageInfo(devices):

	cmd = ("df -h");

	try:
		ps = subprocess.Popen(cmd,shell=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT);
		output = ps.communicate()[0];
	except:
		return ("error getting disk info");

	if not output:
		return "null";
		
	strlines = output.split("\n");
	strdevices = devices.split(",");
	strbuff="";	
	strheader = strlines[0];
	#loop through the lines
	for x in range(1, len(strlines)):
		#loop through the devices
		for f in range(0, len(strdevices)):
			#compare the current device in the loop, with mount point
			if strlines[x].endswith(strdevices[f]):
				strbuff+=strlines[x] + "!!";
				#break;
	return (strheader + "!!" + strbuff);

def main():
	if len(sys.argv) < 2:
		print ("\r[!] Error No option(s) specified!\nExiting...");
		sys.exit(0);
	else:
		arg = sys.argv[1];

	#Write system info to console
	if arg == "-i":
		sys.stdout.write("sysinfo||" + GetDate() + "||" + GetTime() + "||" + GetUpTime() + "||" + GetCPUTemp() + "||" + GetOSInfo() + "||" + GetCPUSpeedMHz() 
+ "||" + GetIPAddress() + "||" + GetCPUModel() + "||" + GetCPUHardwareModel() + 
"||" + GetKernelVersion() + "||" + GetHostName() + "||" + GetTotalMem() + "||" + GetFreeMem() + "||" + GetNumProcs() + "||" + GetMacAddress());

	#Write storage info to console
	if arg == "-s":
		outstr = GetStorageInfo(sys.argv[2]);
		sys.stdout.write("devinfo||" + outstr);
		
	exit();
	
if __name__ == "__main__":
	main();
	