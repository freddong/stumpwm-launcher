install:
	install -m 0644 stumpwm.desktop /usr/share/xsessions/

prepare:
	ros install sbcl-bin/2.4.1
	git clone https://github.com/goose121/clx-truetype ~/.roswell/local-projects/clx-truetype
