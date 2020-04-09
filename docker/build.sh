#!/bin/bash

set -euo pipefail

docker pull blackgolfer/plantuml || true
docker pull blackgolfer/texlive || true
docker pull blackgolfer/sphinx || true

docker-compose build

docker push blackgolfer/plantuml
docker push blackgolfer/texlive
docker push blackgolfer/sphinx