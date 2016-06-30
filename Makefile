PREFIX ?= /usr/local/bin
BUILD = fizzbuzz

all: src/main.c
	gcc src/main.c -O2 -o $(BUILD)
install: $(BUILD)
	mv $(BUILD) $(PREFIX)
uninstall: $(PREFIX)/$(BUILD)
	rm $<
clean: $(BUILD)
	rm $(BUILD)
