
all: hid-gadget-test

hid-gadget-test: hid-gadget-test.c
	$(CC) -g -O -o $@ $<
