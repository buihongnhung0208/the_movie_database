#!/bin/zsh
set -e

flutter pub run build_runner watch --delete-conflicting-outputs
melos format
