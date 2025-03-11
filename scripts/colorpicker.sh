#!/bin/sh

# Dependencies:
# grim, wl-copy, slurp, imagemagick

grim -g "$(slurp -p)" -t ppm - | convert - -format '%[pixel:p{0,0}]' txt:- | tail -n 1 | cut -d ' ' -f 4 | wl-copy
