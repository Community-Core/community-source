
Debian
====================
This directory contains files used to package communityd/community-qt
for Debian-based Linux systems. If you compile communityd/community-qt yourself, there are some useful files here.

## community: URI support ##


community-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install community-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your community-qt binary to `/usr/bin`
and the `../../share/pixmaps/community128.png` to `/usr/share/pixmaps`

community-qt.protocol (KDE)

