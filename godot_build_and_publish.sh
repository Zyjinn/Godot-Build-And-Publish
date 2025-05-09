## Retrieve configs
source config.sh

## Find the game specified and Godot installation
echo "Retrieving Godot installation located at $godot_directory"
echo "Trying to find game $1 in projects directory $projects_directory"

cd "$game_folder"

## Build and Publish the Linux version
echo "Game $1 is found in the directory, attempting to create a build of $linux_build in $game_export_directory..."
mkdir "$game_export_directory/linux/"
godot --headless --export-release "$linux_build"
echo "build finished for build $linux_build"

zip toridoro.zip "$game_export_directory/linux/" -r 

echo "Completed, pushing new version to itch.io at $itch_user/$1:linux"
butler push "$game_export_directory/linux/" "$itch_user/$1:linux"

## Build and Publish the Windows Version
echo "Game $1 is found in the directory, attempting to create a build of $windows_build in $game_export_directory..."
mkdir "$game_export_directory/windows/"
godot --headless --export-release "$windows_build"
echo "build finished for build $windows_build"

zip toridoro.zip "$game_export_directory/windows/" -r 

echo "Completed, pushing new version to itch.io at $itch_user/$1:windows"
butler push "$game_export_directory/windows/" "$itch_user/$1:windows"

## Build and Publish the Mac Version
echo "Game $1 is found in the directory, attempting to create a build of $mac_build in $game_export_directory..."
mkdir "$game_export_directory/mac/"
godot --headless --export-release "$mac_build"
echo "build finished for build $mac_build"

zip toridoro.zip "$game_export_directory/mac/" -r 

echo "Completed, pushing new version to itch.io at $itch_user/$1:mac"
butler push "$game_export_directory/mac/" "$itch_user/$1:mac"

## Build and Publish the Web Version
echo "Game $1 is found in the directory, attempting to create a build of $web_build in $game_export_directory..."
mkdir "$game_export_directory/web/"
godot --headless --export-release "$web_build"
echo "build finished for build $web_build"

zip toridoro.zip "$game_export_directory/web/" -r 

echo "Completed, pushing new version to itch.io at $itch_user/$1:web"
butler push "$game_export_directory/web/" "$itch_user/$1:web"

