A utility to look for Cantonese programs in the official OMNI 2 schedule
====================================================================

This is a small utility script, for my family’s own use,
to pull the official TV schedule from OMNI TV’s web site
then look for programs that look like Cantonese programs.
You can see a list of startup options by running `omni-news --help`.

The script can be told to run in a `--loop` to continually check the downloaded schedule
so that when a Cantonese program is coming up
it will `--speak` the name of the program
(if speech synthesis is available;
it can also be told to stay `--quiet` in the wee hours)
and/or turn the TV on (if possible) if it’s the day’s main programming segment.
The schedule is cached and only downloaded every few days to minimize server load.

Known issues
------------

The script determines which programs are Cantonese by guessing.
Unfortunately this is the only way because the schedule does not contain any information
(whether human- or machine-readable) on the language of any specific program.

The Cantonese name of known programs are hard-coded.
Again, the schedule contains no information so hard-coding is the only way.

Sometimes, after the script downloads a fresh copy of the schedule
it will not find any schedule for that day.
This can happen if the TV station has already erased the information for the current week.
Unfortunately there is nothing that can be done.

The script can be told to speak in Cantonese,
but Cantonese speech can only be synthesized on MacOS.

A lot of things are hard-coded, including how to turn the TV on.
