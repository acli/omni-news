A utility to look for Cantonese programs in the official OMNI 2 schedule
====================================================================

This is a small utility script, for my family’s own use,
that pulls the official TV schedule from OMNI TV’s web site,
then looks for programs that look like they might be Cantonese programs.
You can see a list of startup options by running `omni-news --help`.

The script can be run in a `--loop` mode to continually check the downloaded schedule
and `--speak` the main Cantonese news segment that’s coming up
(if speech synthesis is available) and/or turn the TV on (if possible).
The schedule is cached and only downloaded every few days to minimize server load.

Known issues
------------

The script determines which programs are Cantonese by guessing.
Unfortunately this is the only way because the schedule does not contain any information
(whether human- or machine-readable) on the language of any specific program.

The Cantonese name of the known programs are also hard-coded.
Again, there is no information on the schedule so guessing is the only way.

Sometimes, when the script downloads a fresh copy of the schedule
it will not find any schedule for that day
because the TV station has already erased the information for the current week.
Unfortunately there is nothing that can be done.

The script can be told to speak in Cantonese,
but Cantonese speech can only be synthesized on MacOS.

A lot of things are hard-coded, including how to turn the TV on.
