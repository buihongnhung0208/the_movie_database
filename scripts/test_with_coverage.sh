#!/bin/zsh
set -e

flutter test --coverage
melos run combineTestCoverages
melos run lcovToHtml
