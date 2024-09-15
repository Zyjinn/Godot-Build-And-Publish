echo off

:: Top-level folder where your games are kept
set "base_game_directory=D:\Game Dev\Games\Prototypes\"
:: The subfolder which contains your .godot file
set "game_folder=Birdodoro\GDProject"
:: Location you would like to place exported builds
set "build_exports_directory=D:\Game Dev\Games\Deployed\Toridoro"

:: Directory you installed Godot
set "godot_directory=D:\Game Dev\Godot\Godot"


:: Itch.io user where the game is published
set "itch_user=zyjin"

:: Names of the export templates in Godot for each platform
set "windows_build_name=Windows Desktop"
set "web_build_name=Web"
set "mac_build_name=macOS"
set "linux_build_name=Linux"