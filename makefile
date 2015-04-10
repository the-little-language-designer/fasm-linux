.ONESHELL:

PREFIX ?= /usr
BINDIR ?= $(PREFIX)/bin

build:
	@
	echo -e " \E[33;1m * building fasm ... \E[0m " &&\
	cd source/linux/       &&\
	../../fasm fasm.asm    &&\
	echo -e " \E[33;1m   [ok] \E[0m "
	echo -e " \E[33;1m        \E[0m "

help:
	@
	echo -e " \E[33;1m                                                           \E[0m "
	echo -e " \E[33;1m   makefile functions                                      \E[0m "
	echo -e " \E[33;1m     clean                                                 \E[0m "
	echo -e " \E[33;1m     build						     \E[0m "
	echo -e " \E[33;1m     install						     \E[0m "
	echo -e " \E[33;1m							     \E[0m "
	echo -e " \E[33;1m                                                           \E[0m "
	echo -e " \E[33;1m   please read the Makefile for more informations          \E[0m "
	echo -e " \E[33;1m							     \E[0m "
	echo -e " \E[33;1m   I wish you happy making ^-^                             \E[0m "
	echo -e " \E[33;1m                                                           \E[0m "

install: build
	@
	echo -e " \E[33;1m * moving source/linux/fasm to" $(BINDIR) "... \E[0m " &&\
	cd source/linux/                     &&\
	install -m777 fasm -t "$(BINDIR)"    &&\
	echo -e " \E[33;1m   [ok] \E[0m "
	echo -e " \E[33;1m        \E[0m "

clean:
	@
	rm -f *~ */*~ */*/*~ */*/*/*~ */*/*/*/*~  */*/*/*/*/*~  &&\
	rm -f source/linux/fasm &&\
	echo -e "\E[33;1m [ok] clean directory \E[0m"
