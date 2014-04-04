craftboot-starterkit
====================

This repo is a supplement for my project [CraftBoot](https://github.com/oxguy3/craftboot). The goal of this subproject is to provide a set of scripts and other resources for modpack managers to make it easier to get set up with CraftBoot. Basically, I'm too busy (read: lazy) to take on the massive task of making a complete GUI for setting up modpacks, but hopefully this should help out a little bit.

Until I have this ready to go, I recommend you just use [the Getting Started guide](https://github.com/oxguy3/craftboot/wiki/Getting-Started) to get set up with CraftBoot.


## Getting started

Here are the instructions for setting up and using this starter kit. The kit should theoretically work on Windows, OS X, and any *nix distro, but if you run into problems, [make a new issue](https://github.com/oxguy3/craftboot-starterkit/issues) and provide as much information as possible.

### Installing Cygwin (Windows only)

If you are using Windows, you'll need Cygwin to be able to run the scripts. Download the installer from [here](http://cygwin.com/install.html) if you don't already have it (make sure to get the correct version for your version of Windows) and run it to install the default packages (should be a pretty straightforward installation; I think you can get away with just mashing the "Next" button most of the way through).

Once you have Cygwin installed, you will need to run the script I included called "cygwin-post-install.bat" by double-clicking. This will associate .sh with bash, and pass the correct command flags to bash.

N.B. The cygwin-post-install.bat script may not completely take effect if you already had another program associated with .SH files. If .SH files still won't open in bash when you double-click them in Explorer, open Registry Editor and delete the keys "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.sh" and "HKEY_CLASSES_ROOT\.sh" (obligatory: be careful when editing the registry, or you could break Windows). Once you've done that, reboot your computer (or just open Task Manager and restart explorer.exe if you're lazy like me).

### Download and configure the starter kit

When the first completed version of this kit is released, download the zip file and extract it somewhere. I'll put up more documentation soon, but hopefully the scripts will be somewhat intuitive to use; just run whatever script sounds like it does what you're trying to do, give it any information it asks for, and it'll automatically create some files and whatnot for you.