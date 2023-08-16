#!/bin/zsh
set -e

genhtml coverage_report/lcov.info -o coverage_report/html
