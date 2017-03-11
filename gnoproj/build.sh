#!/bin/bash
set -e

# build gnoproj
docker build -t gnoproj-build -f Dockerfile-build .

# copy main binary and libs
mkdir -p ./dist
docker run -it -v $(pwd)/dist/:/dist/ gnoproj-build copyall /usr/local/bin/gnoproj /dist/

# strip binaries
find dist -type f | xargs -r strip

# build final container
docker build -t gnoproj -f Dockerfile-dist .


