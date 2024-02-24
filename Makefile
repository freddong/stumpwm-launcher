install:
	install -m 0644 stumpwm.desktop /usr/share/xsessions/

prepare:
	ros install sbcl/2.3.11
	git clone https://github.com/goose121/clx-truetype ~/.roswell/local-projects/clx-truetype
