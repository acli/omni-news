A utility to look for Cantonese programs in official OMNI 2 schedule
====================================================================

This is a small utility script, for my family’s own use,
that pulls the official TV schedule from OMNI TV’s web site,
then look for programs that look like they might be Cantonese programs.
You can see a list of startup options by running `omni-news --help`.

The script can be run in a loop mode that continually checks the downloaded schedule
and announce the main Cantonese news segment that’s coming up
(if speech synthesis is available) and/or turn on the TV (if possible).
The schedule is cached and only downloaded every few days to minimize server load.

Known issues
------------

The script works by guessing.
Unfortunately this is the only way because the schedule does not contain any information
(whether human- or machine-readable) on the language of any specific program.

The Cantonese name of the known programs are also hard-coded.
Again, there is no information on the schedule so guessing is the only way.

Sometimes, when the script downloads a fresh copy of the schedule
it will not find any schedule for that day
because the TV station has already erased the information for the current week.
Unfortunately there is nothing that can be done.

