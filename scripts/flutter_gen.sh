#!/bin/zsh
set -e

flutter pub global run fluttergen -c pubspec.yaml
flutter pub global run melos format
