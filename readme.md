# What is this?

Godot build and publish is an application developed by me (Nick), which will automate the process of building and publishing your Godot games to itch.io.

While testing and bugfixing, making new builds and then uploading them to itch.io can be a pain, so with the use of the Godot API and Butler, I created this quick little batch tool!

## Pre-Requisites

This software requires the following:

- Godot 4
- Butler
- A public itch.io page

Please ensure you have setup both of these pieces of software before continuing!

# Setup

## Configure the script

Firstly, you will need to navigate to the config.bat file, and input the appropriate filepaths for each parameter

This is important, or the script will not run!

## Configure your Godot Builds

Important! Ensure your godot export templates are configured in your project, and note them in your config.bat file appropriately!

# Running the script

In order to run the script, in a terminal, run "godot_build_and_publish.bat {your_game_name}"

Ensure that your game's name is the proper name on itch! (as a note, itch typically uses '-' characters in-place of your spaces internally!)
