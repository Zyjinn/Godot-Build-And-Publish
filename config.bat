echo off
:: Set this to the directory where your game folder is located
set "tool_install_directory=D:\Game Dev\DeploymentTools\Build Script"
set "base_game_directory=D:\Game Dev\Games\Prototypes\"
set "godot_directory=D:\Game Dev\Godot\godot"
set "build_exports_directory=D:\Game Dev\Games\Deployed\Ar-Tactica"

:: This is the 1st parameter in the script (redundant)
set "game_folder=Ar-Tactica"
set "itch_user=zyjin"
set "windows_build_name=Windows Desktop - Release"
set "web_build_name=Web - Release"
set "mac_build_name=macOS - Release"
set "linux_build_name=Linux/X11 - Release"

echo Setting variables for script