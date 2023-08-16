#!/bin/zsh
set -e

flutter pub run build_runner build --delete-conflicting-outputs
flutter pub global run melos format
