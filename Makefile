SHELL		:= /bin/sh
INSTALL		?= install

PREFIX		?= /usr/local

TARGET		:= dog

install: release
	$(INSTALL)    -d ${DESTDIR}/${PREFIX}/bin
	$(INSTALL) -s -t ${DESTDIR}/${PREFIX}/bin target/release/${TARGET}
release:
	cargo build --release


.PHONY: release install
