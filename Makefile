PREFIX ?= /usr/local/bin
BUILD = fizzbuzz

all: $(BUILD)

$(BUILD): src/main.c
	gcc src/main.c -O2 -o $@
install: $(BUILD)
	link $(BUILD) $(PREFIX)
uninstall: $(PREFIX)/$(BUILD)
	rm $<
clean: $(BUILD)
	rm $(BUILD)
