bin_targets=omni-news

install: $(addprefix $(HOME)/bin/,$(bin_targets))

$(HOME)/bin/%: %
	perl -cw $< && install -m 755 $< $@

%.wav: %.mp3
	mpv $< -o $@ --no-video

.PHONEY: install
.DELETE_ON_ERROR:
