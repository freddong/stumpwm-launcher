install:
	install -m 0644 stumpwm.desktop /usr/share/xsessions/

prepare:
	ros install sbcl-bin/2.4.1
	ros install quicklisp
	git clone https://github.com/goose121/clx-truetype ~/.roswell/local-projects/clx-truetype || echo "project exists"
	git clone https://github.com/stumpwm/stumpwm.git ~/.roswell/local-projects/stumpwm || echo "project exists"

upgrade:
	ros run -e '(ql:update-all-dists)' -q
	cd ~/.roswell/local-projects/stumpwm && git pull
	ros run -e '(asdf:compile-system :stumpwm :force t)' -q
	ros run -e '(ql:register-local-projects)' -q
