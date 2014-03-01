#!/usr/bin/perl
###################################################################
# usage:
#	./Users/acc/purge_users.pl randomu1
# when calling the script, you have to feed it a username to ignore - it could
# be the last user in, or it can be anything you want (i.e. "randomu1")

`cd /Users`;	#move into the /Users directory
#$homes=`ls /Users | grep -v -x "Shared" | grep -v -x "acc" | grep -v -x @ARGV[0]`;
# list the folders found in $root that aren't Shared, acc, and put them into an array (@homes)

#$homes=`find /Users -maxdepth 1 -newermt "2012-01-01 00:00" | grep -v -x "Shared" | grep -v -x "acc"`;
# | grep -v -x @ARGV[0]
$homes=`find /Users -maxdepth 1 -mtime +7 | grep -v -x "Shared" | grep -v -x "acc"`;
# lists the top level of the /Users directory (-maxdepth 1)
# lists the directories not accessed in the last 7 days (-mtime +7)
# ignores certain results (grep -v -x "Shared")

# returns in the format: /Users/username 

# to export the list of users that's deleted?
#open (EXPORT,'>>/Users/acc/export.txt');# or die 'can\'t open file';
#$convertstring = join ("\n",@homes);
#print EXPORT $convertstring;
#close (EXPORT);

@homes=split('\n', $homes);		# take the array, remove the \n and put them back in
for($x=0;$x<=$#homes;$x++)		# for each entry in the array, do the following, then increment the value and start with the next entry
{
#	@homes[$x]="/Users/".@homes[$x];
	# update the list from "username" to "/$root/username/$prefs"
}

foreach $i (@homes)		# for each entry in @homes
{
	print("$i\n");		# print out the user directory
#	`rm -rf $i`;		# remove the users directory
}