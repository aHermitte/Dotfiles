#!/bin/bash

echo "Generating the lists of explicitly installed packages in ~/.backup"

pacman -Qe > .backup/pacman_packages || echo "pacman failed"
npm list -g --depth=0 > .backup/npm_packages || echo "npm failed"
pip list > .backup/pip_packages || echo "pip failed"

git add .backup

exit 0
