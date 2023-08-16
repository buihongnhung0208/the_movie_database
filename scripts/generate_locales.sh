#!/bin/zsh
set -e

get generate locales assets/locales
melos format
