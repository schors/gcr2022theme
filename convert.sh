#!/bin/sh
# make animated gif with compilied example

if [ -x "/usr/bin/convert" ]; then
        if [ ! -d "slide" ]; then
                mkdir -p slide
        fi
        cd slide
        rm -f slide-*.png
        convert -density 600 ../gcr2022-example.pdf -strip -resize 800  PNG8:slide-%02d.png
        convert -layers OptimizePlus -delay 200 slide-00.png -delay 125 slide-0[1234567].png -loop 0 ../gcr2022-example.gif
else
        echo "You must install ImageMagick!"
fi

