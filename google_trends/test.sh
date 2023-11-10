#!/bin/bash
set -e
docker run --rm quydx/source-google-trends:dev spec
docker run --rm -v $(pwd)/secrets:/secrets quydx/source-google-trends:dev check --config /secrets/config.json
docker run --rm -v $(pwd)/secrets:/secrets quydx/source-google-trends:dev discover --config /secrets/config.json
docker run --rm -v $(pwd)/secrets:/secrets -v $(pwd)/sample_files:/sample_files quydx/source-google-trends:dev read --config /secrets/config.json --catalog /sample_files/configured_catalog.json