echo off

:: Top-level folder where your games are kept
set "base_game_directory=D:\Game Dev\Games\"
:: The subfolder which contains your .godot file
set "game_folder=game"
:: Directory you installed Godot
set "godot_directory=D:\Game Dev\Godot\godot"
:: Location you would like to place exported builds
set "build_exports_directory=D:\Game Dev\Games\Deployed\game"

:: Itch.io user where the game is published
set "itch_user=my_user"

:: Names of the export templates in Godot for each platform
set "windows_build_name=Windows Desktop"
set "web_build_name=Web - Release"
set "mac_build_name=macOS"
set "linux_build_name=Linux/X11"