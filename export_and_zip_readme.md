# Description

This script will build, and zip your game to Windows, Mac, and Linux platforms, and then publish to itch.io

# Setup the script

Make sure this ExportAndZipGame.bat file is placed into the folder above the \GDProject\, for example:

- ..\YourGame\ExportAndZipGame.bat with \GDProject\project.godot below it

You can adjust the code, but for now, this is non-configurable otherwise

Note: This is also setup for publishing to zyjin itch.io page, need to add configurations in future

# Running the script

Run the script as follows:

export_build_zip_and_publish.bat 'Your-Game-Name'

The '-'s between the game title are important, as this will be how the game is titled on itch.io
