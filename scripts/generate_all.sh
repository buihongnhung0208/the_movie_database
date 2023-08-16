#!/bin/zsh
set -e

#fvm flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
fluttergen -c pubspec.yaml
get generate locales assets/locales
flutter pub global run melos format
