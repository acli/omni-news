bin_targets=omni-news

ifeq ($(shell id -u), 0)
bindir=/usr/local/bin
else
bindir=$(HOME)/bin
endif

install: $($(bindir),$(bin_targets))

$(bindir)/%: %
	perl -cw $< && install -m 755 $< $@

%.wav: %.mp3
	mpv $< -o $@ --no-video

.PHONEY: check install
.DELETE_ON_ERROR:
