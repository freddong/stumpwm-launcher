1. Install Roswell from [GitHub releases](https://github.com/roswell/roswell/releases) and install the system SBCL package. On Fedora, run `sudo dnf install sbcl`.
2. Clone this project to `/opt` and run `make prepare`.
3. Run `sudo make install` to install the X session entry.

Roswell uses the system Lisp implementation (`sbcl/system`) instead of its prebuilt SBCL binary.
