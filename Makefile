bin_targets=omni-news

install: $(addprefix $(HOME)/bin/,$(bin_targets))

$(HOME)/bin/%: %
	perl -cw $< && install -m 755 $< $@

.PHONEY: install
.DELETE_ON_ERROR:
