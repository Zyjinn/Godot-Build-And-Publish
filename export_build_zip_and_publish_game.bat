:: Configure the settings for this batch file here
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

echo "Godot install located at %godot_directory%"

@REM TESTING
@REM echo "NAVIGATE TO:" "%base_game_directory%%game_folder%\GDProject"
@REM echo 7z a -tzip "%build_exports_directory%\windows.zip" "%build_exports_directory%\windows\*"
@REM "%godot_directory%" --headless --export-release %windows_build_name%

:: FIND THE GAME DIRECTORY
echo "trying to find game %1 in directory %base_game_directory%%game_folder%\GDProject"
cd "%base_game_directory%%game_folder%\"GDProject


:: BUILD AND PUBLISH WINDOWS VERSION
echo "Game %1 found at the directory, attempting to create windows build with template %windows_build_name%"
"%godot_directory%" --headless --export-release "%windows_build_name%"
echo "Build complete, creating windows zip in %build_exports_directory%\windows\"
7z a -tzip "%build_exports_directory%\windows.zip" "%build_exports_directory%\windows\*"

echo "Windows build successfully zipped, attempting to push new version to itch.io at %itch_user%/%1:windows"
butler push "D:\Game Dev\Games\Deployed\Ar-Tactica\windows.zip" zyjin/%1:windows
echo "Windows build successfully pushed to itch.io!"

:: BUILD AND PUBLISH WEB VERSION
echo "Attempting to create web build with template %web_build_name%"
"%godot_directory%" --headless --export-release "%web_build_name%"
echo "Build complete, creating web zip in %build_exports_directory%\web\"
7z a -tzip "%build_exports_directory%\web.zip" "%build_exports_directory%\web\*"

echo "Web build successfully zipped, attempting to push new version to itch.io at %itch_user%/%1:html"
butler push "D:\Game Dev\Games\Deployed\Ar-Tactica\web.zip" zyjin/%1:windows
echo "Web build successfully pushed to itch.io!"

:: BUILD AND PUBLISH WEB VERSION
echo "Attempting to create web build with template %web_build_name%"
"%godot_directory%" --headless --export-release "%web_build_name%"
echo "Build complete, creating web zip in %build_exports_directory%\web\"
7z a -tzip "%build_exports_directory%\web.zip" "%build_exports_directory%\web\*"

echo "Web build successfully zipped, attempting to push new version to itch.io at %itch_user%/%1:html"
butler push "D:\Game Dev\Games\Deployed\Ar-Tactica\web.zip" zyjin/%1:windows
echo "Web build successfully pushed to itch.io!"

@REM "D:\Game Dev\Godot\godot" --headless --export-release "Web - Release"
@REM 7z a -tzip "D:\Game Dev\Games\Deployed\Ar-Tactica\web.zip" "D:\Game Dev\Games\Deployed\Ar-Tactica\web\*"

@REM "D:\Game Dev\Godot\godot" --headless --export-release "macOS - Release"
@REM 7z a -tzip "D:\Game Dev\Games\Deployed\Ar-Tactica\mac.zip" "D:\Game Dev\Games\Deployed\Ar-Tactica\mac\*"

@REM "D:\Game Dev\Godot\godot" --headless --export-release "Linux/X11 - Release"
@REM 7z a -tzip "D:\Game Dev\Games\Deployed\Ar-Tactica\linux.zip" "D:\Game Dev\Games\Deployed\Ar-Tactica\linux\*"


@REM butler push "D:\Game Dev\Games\Deployed\Ar-Tactica\linux.zip" zyjin/%1:linux
@REM butler push "D:\Game Dev\Games\Deployed\Ar-Tactica\mac.zip" zyjin/%1:mac
@REM butler push "D:\Game Dev\Games\Deployed\Ar-Tactica\web.zip" zyjin/%1:html

cd "%tool_install_directory%"