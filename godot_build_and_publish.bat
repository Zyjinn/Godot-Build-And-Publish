:: Configure the settings for this batch file here
echo off
CALL config.bat

echo "Godot install located at %godot_directory%"

:: FIND THE GAME DIRECTORY
echo trying to find game "%1" in directory "%base_game_directory%%game_folder%"
cd "%base_game_directory%%game_folder%\"


:: BUILD AND PUBLISH WINDOWS VERSION
echo "Game %1 found at the directory, attempting to create windows build with template %windows_build_name%"
echo "Creating directory \windows\ at %build_exports_directory%"
mkdir "%build_exports_directory%\windows\"
"%godot_directory%" --headless --export-release "%windows_build_name%"
echo "Build complete, creating windows zip in %build_exports_directory%\windows\"
7z a -tzip "%build_exports_directory%\windows.zip" "%build_exports_directory%\windows\*"

echo "Windows build successfully zipped, attempting to push new version to itch.io at %itch_user%/%1:windows"
butler push "%build_exports_directory%\windows.zip" "%itch_user%/%1:windows"
echo "Windows build successfully pushed to itch.io!"

:: BUILD AND PUBLISH WEB VERSION
echo "Attempting to create web build with template %web_build_name%"
echo "Creating directory \web\ at %build_exports_directory%"
mkdir "%build_exports_directory%\web\"
"%godot_directory%" --headless --export-release "%web_build_name%"
echo "Build complete, creating web zip in %build_exports_directory%\web\"
7z a -tzip "%build_exports_directory%\web.zip" "%build_exports_directory%\web\*"

echo "Web build successfully zipped, attempting to push new version to itch.io at %itch_user%/%1:html"
butler push "%build_exports_directory%\web.zip" "%itch_user%/%1:html"
echo "Web build successfully pushed to itch.io!"

:: BUILD AND PUBLISH Mac VERSION
echo "Attempting to create Mac build with template %mac_build_name%"
echo "Creating directory \mac\ at %build_exports_directory%"
mkdir "%build_exports_directory%\mac\"
"%godot_directory%" --headless --export-release "%mac_build_name%"
echo "Build complete, creating mac zip in %build_exports_directory%\mac\"
7z a -tzip "%build_exports_directory%\mac.zip" "%build_exports_directory%\mac\*"

echo "Mac build successfully zipped, attempting to push new version to itch.io at %itch_user%/%1:mac"
butler push "%build_exports_directory%\mac.zip" "%itch_user%/%1:mac"
echo "Mac build successfully pushed to itch.io!"

:: BUILD AND PUBLISH Linux VERSION
echo "Attempting to create linux build with template %linux_build_name%"
echo "Creating directory \linux\ at %build_exports_directory%"
mkdir "%build_exports_directory%\linux\"
"%godot_directory%" --headless --export-release "%linux_build_name%"
echo "Build complete, creating linux zip in %build_exports_directory%\linux\"
7z a -tzip "%build_exports_directory%\linux.zip" "%build_exports_directory%\linux\*"

echo "linux build successfully zipped, attempting to push new version to itch.io at %itch_user%/%1:linux"
butler push "%build_exports_directory%\linux.zip" "%itch_user%/%1:linux"
echo "linux build successfully pushed to itch.io!"