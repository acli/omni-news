A utility to look for Cantonese programs in the official OMNI 2 schedule
====================================================================

This is a small utility script, for my family’s own use,
to pull the official TV schedule from OMNI TV’s web site
then look for Cantonese programs (coded CAN in their new schedule).
You can see a list of startup options by running `omni-news --help`.

The script can be told to run in a `--loop` to continually check the downloaded schedule
so that when a Cantonese program is coming up
it will `--speak` the name of the program
(if speech synthesis is available;
it can also be told to stay `--quiet` in the wee hours)
and/or turn the TV on (if possible) if it’s the day’s main programming segment.
The schedule is cached and only downloaded every few days to minimize server load.

Around December 2022, OMNI TV changed its schedule to include actual machine-readable language tags
(their own inventions, not anything standard like ISO 639 or MARC codes).
In theory, this means the script should be able to check for programs in other languages.

Known issues
------------

You can’t check for English programming in a continuous loop
because English programming is on both OMNI 1 and OMNI 2.
The current code can’t handle both channels at the same time.

The Cantonese name of known programs are hard-coded
because the master schedules do not contain the non-English names of anything.

Because their language codes are non-standard,
what a lot of these codes mean is anyone’s guess.
They don’t really provide a cross reference table or any other kind of explanation anywhere.

Sometimes, after the script downloads a fresh copy of the schedule
it will not find any schedule for that day.
This can happen if the TV station has already erased the information for the current week.
Unfortunately there is nothing that can be done.

The script can be told to speak in Cantonese,
but Cantonese speech can only be synthesized on MacOS.

A lot of things are hard-coded, including how to turn the TV on.

Old issues no longer relevant
-----------------------------
The script used to determine which programs were Cantonese by guessing.
This was the only way because the schedule did not contain any information
(whether human- or machine-readable) on the language of any specific program.
