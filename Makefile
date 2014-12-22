SHELL   = /bin/sh
PREFIX	= /usr/local
SOURCES	= aws-region-name.bash
PROGRAM = aws-region-name

dirty=$(shell git diff --shortstat)
execdir=$(PREFIX)/bin

all: $(PROGRAM)

$(PROGRAM): $(SOURCES)
	rm -rf $@
	cat $(SOURCES) > $@+
	bash -n $@+
	mv $@+ $@
	chmod 0755 $@

install: $(PROGRAM)
	install -d "$(execdir)"
	install -m 0755 $(PROGRAM) "$(execdir)/$(PROGRAM)"

run: all
	./$(PROGRAM)

uninstall:
	rm -f "$(execdir)/$(PROGRAM)"

publish: $(PROGRAM)
ifeq ($(dirty),)
	git tag v$(shell ./$(PROGRAM) --version)
	git push --tags
else
	@echo "Cannot publish: You have unstaged changes or index contains uncommitted changes" >&2
	@echo "Please commit or stash them" >&2
	@exit 1
endif

clean:
	rm -f $(PROGRAM)

.PHONY: publish run install uninstall clean
