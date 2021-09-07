.PHONY: install

# Base directory, use the latex userspace dir
TEX_HOMEDIR=${HOME}/texmf/tex/latex/local

# Style files / class files to install
TEX_PACKAGES = bradley-gs

$(TEX_PACKAGES): %:%.sty
	@echo Install package $@
	cp $< ${TEX_HOMEDIR}

install: $(TEX_PACKAGES)