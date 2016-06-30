all: src/main.c
	gcc src/main.c -O2 -o fizzbuzz
install: fizzbuzz
	mv fizzbuzz /usr/local/bin/
uninstall: /usr/local/bin/fizzbuzz
	rm /usr/local/bin/fizzbuzz
clean: fizzbuzz
	rm fizzbuzz
