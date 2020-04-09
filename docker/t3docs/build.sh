#!/bin/bash

set -euo pipefail

docker pull blackgolfer/t3docs:plantuml || true
docker pull blackgolfer/t3docs:plantuml_texlive || true
docker pull blackgolfer/t3docs:latest || true

docker build --target plantuml \
             --cache-from=blackgolfer/t3docs:plantuml \
             --tag blackgolfer/t3docs:plantuml .

docker push blackgolfer/t3docs:plantuml || true

docker build --target plantuml_texlive \
             --cache-from=blackgolfer/t3docs:plantuml_texlive \
             --cache-from=blackgolfer/t3docs:plantuml \
             --tag blackgolfer/t3docs:plantuml_texlive .

docker push blackgolfer/t3docs:plantuml_texlive || true

docker build --target final \
             --cache-from=blackgolfer/t3docs:latest \
             --cache-from=blackgolfer/t3docs:plantuml \
             --cache-from=blackgolfer/t3docs:plantuml_texlive \
             --tag blackgolfer/t3docs:latest .

docker push blackgolfer/t3docs:latest
