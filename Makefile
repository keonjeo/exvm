.PHONY: install clean source

# How to use this Makefile?
# It's only for local development to remove the old EXVM_ROOT, and install the new EXVM_ROOT, and then make source it.
# make clean && make install && make source

install:
	@make clean
	@echo ">>>>>>  Install exvm tool into ~/.exvm directory  <<<<<<<"
	@./binscripts/exvm-installer

clean:
	@if [ -d ~/.exvm/archive ]; then \
		echo ">>>>>>  Backup ~/.exvm/archive directory  <<<<<<<"; \
		if [ ! -d ~/.exvm_archive.back ]; then \
			mv ~/.exvm/archive ~/.exvm_archive.back; \
		fi; \
	fi;
	@if [ -d ~/.exvm ]; then \
		echo ">>>>>>  Remove ~/.exvm directory  <<<<<<<"; \
		rm -rf ~/.exvm; fi

# How to fix `/bin/sh: 1: source: not found` issue?
# ls -l `which sh`
# sudo dpkg-reconfigure dash #选择No
source:
	@source ~/.exvm/scripts/exvm
