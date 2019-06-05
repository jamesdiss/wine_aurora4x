Aurora 4x on Mac OSX
--------------------

Tested on OSx 10.13.6 with wine 4.0.1 and winetricks 20190310.

This can be tricky to get running, so I've built a script.

## Quick Setup

Wine and Winetricks are required.  I like homebrew;

```
brew install wine winetricks
```

Clone this repo.  Alter anything you need to in the script and make it
executable before attempting to run it;

```
cd wine_aurora4x && \
chmod +x aurora4x_wine_setup.sh && \
./aurora4x_wine_setup.sh
```

## Slightly more complicated explanation

This installs Aurora4x under ~/.wine/aurora4x.  If you want to get rid
of the install, delete this directory and the virtual environment will
go away.

Running the program is;

```
cd ~/.wine/aurora4x/drive_c/Aurora
wine Aurora.exe
```

The script just runs wine and winetricks with a known set of DLLs and
is fairly easy to follow.  Uses a 32-bit windows version and builds a
basic Visual Basic 6 runtime environment with database services.