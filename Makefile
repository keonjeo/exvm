.PHONY: install clean source

# How to use this Makefile?
# It's only for local development to remove the old EXVM_ROOT, and install the new EXVM_ROOT, and then make source it.
# make clean && make install && make source

install:
	@make clean
	@echo ">>>>>>  Install exvm tool into ~/.exvm directory  <<<<<<<"
	@./exvm-installer dev

clean:
	@if [ -d ~/.exvm ]; then result1=`ls -A  ~/.exvm/elixir_tars`; fi;
	@if [  -n ${result1} ]; then echo ">>>>>>  Backup ~/.exvm/elixir_tars directory  <<<<<<<"; fi;
	@if [ -n ${result1} ]; then \
		if [ ! -d ~/.exvm_elixir_tars.back ]; then \
			cp -rp ~/.exvm/elixir_tars ~/.exvm_elixir_tars.back; \
		fi; \
	fi;

	@if [ -d ~/.exvm ]; then result2=`ls -A  ~/.exvm/elixir_versions`; fi
	@if [ -n ${result2} ]; then echo ">>>>>>  Backup ~/.exvm/elixir_versions directory  <<<<<<<"; fi
	@if [ -n ${result2} ]; then \
		if [ ! -d ~/.exvm_elixir_versions.back ]; then \
			cp -rp ~/.exvm/elixir_versions ~/.exvm_elixir_versions.back; \
		fi; \
	fi;

	@if [ -d ~/.exvm ]; then echo ">>>>>>  Remove ~/.exvm directory  <<<<<<<"; fi
	@if [ -d ~/.exvm ]; then rm -rf ~/.exvm; fi

# How to fix `/bin/sh: 1: source: not found` issue?
# ls -l `which sh`
# sudo dpkg-reconfigure dash #选择No
source:
	@source ~/.exvm/scripts/exvm